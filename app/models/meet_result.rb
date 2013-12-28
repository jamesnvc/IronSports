class MeetResult < ActiveRecord::Base
  belongs_to :meet

  def best_squat
    if squat3_success
      squat3
    elsif squat2_success
      squat2
    elsif squat1_success
      squat1
    else
      0
    end
  end

  def best_bench
    if bench3_success
      bench3
    elsif bench2_success
      bench2
    elsif bench1_success
      bench1
    else
      0
    end
  end

  def best_deadlift
    if deadlift3_success
      deadlift3
    elsif deadlift2_success
      deadlift2
    elsif deadlift1_success
      deadlift1
    else
      0
    end
  end

  def total
    best_squat + best_bench + best_deadlift
  end

  def wilks_coeff
    return 0 if not self.weight
    coeffs = {
        'M' => {
          a: -216.0475144,
          b: 16.2606339,
          c: -0.002388645,
          d: -0.00113732,
          e: 7.01863e-6,
          f: -1.29e-8
      },
        'F' => {
          a: 594.31747775582,
          b: -27.23842536447,
          c: 0.82112226871,
          d: -0.00930733913,
          e: 0.00004731582,
          f: -0.00000009054
      }
    }
    c = coeffs[self.gender]
    return 500.0 / (
      c[:a] +
      c[:b] * self.weight    +
      c[:c] * self.weight**2 +
      c[:d] * self.weight**3 +
      c[:e] * self.weight**4 +
      c[:f] * self.weight**5
    )
  end

  def wilks_total
    wilks_coeff * total
  end

  def failed?
    [best_squat, best_deadlift, best_bench].any?(&:zero?)
  end

end

class OlyMeetResult < ActiveRecord::Base
  belongs_to :oly_meet

  def best_snatch
    if snatch3_success
      snatch3
    elsif snatch2_success
      snatch2
    elsif snatch1_success
      snatch1
    else
      0
    end
  end

  def best_cleanandjerk
    if cleanandjerk3_success
      cleanandjerk3
    elsif cleanandjerk2_success
      cleanandjerk2
    elsif cleanandjerk1_success
      cleanandjerk1
    else
      0
    end
  end

  def total
    best_snatch + best_cleanandjerk
  end

  def sinclair_coefficient
    # Sinclair values for 2013
    coeffs = {
      'M' => {
        a: 0.794358141,
        b: 174.393,
      },
      'F' => {
        a: 0.897260740,
        b: 148.026,
      }
    }
    c = coeffs[self.gender]
    return 1 if self.weight > c[:b]
    return 10**( c[:a] * Math.log10(self.weight / c[:b])**2 )
  end

  def sinclair_total
    sinclair_coefficient * total
  end

  def failed?
    [best_snatch, best_cleanandjerk].any?(&:zero?)
  end

end


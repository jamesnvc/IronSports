class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
    :first_name, :last_name, :birthdate, :studying, :graduating, :bodyweight,
    :gender, :weight_class, :squat_max, :bench_max, :deadlift_max,
    :registration_number
  attr_protected :is_admin

  validates_format_of :gender, with: /\A(M|F)\z/, message: "M or F for gender"
  validates_presence_of :registration_number
  validates_uniqueness_of :registration_number
  validates :registration_number, inclusion: {
    in: ApplicationHelper.get_member_numbers,
    message: "%{value} is not a valid registration number"
  }

  scope :lifters, conditions: [
    'squat_max IS NOT NULL AND bench_max IS NOT NULL AND ' +
    'deadlift_max IS NOT NULL' ]

  def admin?
    self.is_admin
  end

  def info_missing?
    [bodyweight, squat_max, bench_max, deadlift_max].any? &:nil?
  end

  def wilks_coeff
    return 0 if not self.bodyweight
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
      c[:b] * self.bodyweight    +
      c[:c] * self.bodyweight**2 +
      c[:d] * self.bodyweight**3 +
      c[:e] * self.bodyweight**4 +
      c[:f] * self.bodyweight**5
    )
  end

  def numeric_total
    [ squat_max || 0, bench_max || 0, deadlift_max || 0 ].sum
  end

  def wilks_total
    wilks_coeff * numeric_total
  end

  def total
    numeric_total.to_s + " kg"
  end

  def mass
    if bodyweight
      bodyweight.to_s + " kg"
    else
      'Not given'
    end
  end

  def wilks
    "%0.3f" % wilks_total
  end

  def name
    if not first_name and not last_name
      return email
    else
      [ first_name || '', last_name || ''].join(' ').strip
    end
  end

  def age
    if birthdate
      (Time.now.to_s(:number).to_i - birthdate.to_time.to_s(:number).to_i) / 10e9.to_i
    else
      "Not given"
    end
  end

  def sex
    gender == 'M' ? 'Male' : 'Female'
  end

  [:squat_max, :bench_max, :deadlift_max].each do |lift|
    name = lift.to_s.sub(/_max$/, '').intern
    define_method(name) { self.send(lift).to_s + " kg" }
  end

end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
    :first_name, :last_name, :birthdate, :studying, :graduating, :bodyweight,
    :gender, :weight_class, :squat_max, :bench_max, :deadlift_max
  attr_protected :is_admin

  validates_format_of :gender, with: /\A(M|F)\z/, message: "M or F for gender"
  validates_uniqueness_of :email

  def admin?
    return self.is_admin
  end

  def wilks
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

  def total
    return [ squat_max || 0, bench_max || 0, deadlift_max || 0 ].sum
  end

  def wilks_total
    return wilks * total
  end

  def name
    if not first_name and not last_name
      return email
    else
      [ first_name || '', last_name || ''].join(' ').strip
    end
  end
end

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
  validates_numericality_of :bodyweight
  validates_uniqueness_of :email

  def admin?
    return self.is_admin
  end

  def name
    if not first_name and not last_name
      return email
    else
      [ first_name || '', last_name || ''].join(' ').strip
    end
  end
end

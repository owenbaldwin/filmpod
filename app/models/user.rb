class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :submissions, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :grants, dependent: :destroy
  has_many :departments_users, dependent: :destroy
  has_many :films, through: :grants
  has_many :departments, through: :departments_users
  has_one_attached :photo

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def user_skills
    skills.to_s
  end

  def users_dept(film_id)
    # Department.joins(:departments_user).where(["user_id = ? and film_id = ?", self.id, film_id])
    dpt = self.departments.filter { |x| x.film_id == film_id}
    # dpt[:name]
  end

end

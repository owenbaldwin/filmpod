class Department < ApplicationRecord
  belongs_to :film
  has_many :tasks, dependent: :destroy
  has_many :departments_users
  has_many :users, through: :departments_users
end

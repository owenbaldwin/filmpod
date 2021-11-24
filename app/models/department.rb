class Department < ApplicationRecord
  belongs_to :film
  has_many :tasks, dependent: :destroy
  has_many :DepartmentsUsers
end

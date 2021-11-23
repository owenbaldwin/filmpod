class Department < ApplicationRecord
  belongs_to :film
  has_many :tasks
  has_many :DepartmentsUsers
end

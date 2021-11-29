class Film < ApplicationRecord
  has_many :departments, dependent: :destroy
  has_many :grants, dependent: :destroy
  has_many :users, through: :grants
  # has_and_belongs_to_many :departments_users

end

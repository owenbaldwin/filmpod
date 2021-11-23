class Film < ApplicationRecord
  has_many :departments
  has_many :grants
  has_many :users, through: :grants
end

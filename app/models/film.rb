class Film < ApplicationRecord
  has_many :departments, dependent: :destroy
  has_many :grants, dependent: :destroy
  has_many :users, through: :grants
end

class Film < ApplicationRecord
  has_many :departments
  has_many :grants
end

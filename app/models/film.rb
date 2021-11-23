class Film < ApplicationRecord
  has_many :departments, :grants
end

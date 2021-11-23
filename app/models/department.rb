class Department < ApplicationRecord
  belongs_to :film
  has_many :tasks, :users
end

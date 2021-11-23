class Task < ApplicationRecord
  belongs_to :department
  belongs_to :user
  has_many :submissions
end

class Submission < ApplicationRecord
  belongs_to :task
  belongs_to :user
  has_many :comments
  has_one_attached :photo
end

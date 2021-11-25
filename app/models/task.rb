class Task < ApplicationRecord
  belongs_to :department
  belongs_to :user
  has_many :submissions, dependent: :destroy
  acts_as_list # every time a task is created it will get its position set automatically
end

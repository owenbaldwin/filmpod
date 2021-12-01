class DepartmentsUser < ApplicationRecord
  belongs_to :department
  belongs_to :user
  has_and_belongs_to_many :grants, dependent: :destroy
  has_and_belongs_to_many :films, dependent: :destroy

end

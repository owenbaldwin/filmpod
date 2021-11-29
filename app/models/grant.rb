class Grant < ApplicationRecord
  RANKS = ["Direction", "Head of department", "Crew member"].freeze
  belongs_to :user
  belongs_to :film
  has_many :departments, through: :films
  has_and_belongs_to_many :departments_users
  belongs_to :department

end
# Add something for when fired

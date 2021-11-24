class Grant < ApplicationRecord
  RANKS = ["Direction", "Head of department", "Crew member"].freeze
  belongs_to :user
  belongs_to :film
end
# Add something for when fired

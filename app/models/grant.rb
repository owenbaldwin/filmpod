class Grant < ApplicationRecord
  RANKS = ["direction", "head", "crew"].freeze
  belongs_to :user
  belongs_to :film

end

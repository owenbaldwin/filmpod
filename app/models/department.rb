class Department < ApplicationRecord
  DPTNAMES = ["Direction", "Production", "Art Department", "Camera Department", "Acting Department", "Electric Department", "Grip Department", "Make-Up Department", "Wardrobe Department", "Sound Department", "Music Department", "Catering Department", "Stunts Department", "VFX Department", "Editing Department"].freeze
  belongs_to :film
  has_many :tasks, dependent: :destroy
  has_many :departments_users
  has_many :users, through: :departments_users
  has_many :grants

end

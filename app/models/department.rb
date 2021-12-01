class Department < ApplicationRecord
  DPTNAMES = ["Direction", "Production", "Art", "Camera", "Acting", "Electric", "Grip", "Make-Up", "Wardrobe", "Sound", "Music", "Catering", "Stunts", "VFX", "Editing"].freeze
  belongs_to :film
  has_many :tasks, dependent: :destroy
  has_many :departments_users, dependent: :destroy
  has_many :users, through: :departments_users
  has_many :grants, dependent: :destroy

end

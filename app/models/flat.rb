class Flat < ApplicationRecord
  has_many :flat_perks
  has_many :perks, through: :flat_perks
  has_many :profile_researches, dependent: :destroy
end

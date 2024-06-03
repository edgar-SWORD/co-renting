class Perk < ApplicationRecord
  has_many :flat_perks, dependent: :destroy
  has_many :flats, through: :flat_perks
end

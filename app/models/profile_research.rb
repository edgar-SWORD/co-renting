class ProfileResearch < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  has_many :couples
  # validates :location, presence: true
end

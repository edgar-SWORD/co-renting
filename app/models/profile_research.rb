class ProfileResearch < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  has_many :couples, dependent: :destroy
  validates :location, presence: true
end

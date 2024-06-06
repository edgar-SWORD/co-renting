class ProfileResearch < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  has_many :couples, class_name: 'Couple', foreign_key: 'first_profile_id'
  validates :location, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end

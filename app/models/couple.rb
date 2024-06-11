class Couple < ApplicationRecord
  belongs_to :first_profile, class_name: 'ProfileResearch', foreign_key: 'first_profile_id'
  belongs_to :second_profile, class_name: 'ProfileResearch', foreign_key: 'second_profile_id'
  has_one :chatroom
end

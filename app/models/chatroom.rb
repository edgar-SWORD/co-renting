class Chatroom < ApplicationRecord
  belongs_to :couple
  has_many :messages, dependent: :destroy
end

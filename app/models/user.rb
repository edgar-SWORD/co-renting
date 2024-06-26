class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :children, dependent: :destroy

  has_many :profile_researches, dependent: :destroy
  has_many :chatrooms, through: :couples
  has_many :messages, through: :chatrooms

  has_many :first_couples, through: :profile_researches
  has_many :second_couples, through: :profile_researches
  has_one_attached :photo


  # validates :alternance, presence: true
  # validates :rythm, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def avatar_url_safe
    avatar_url || ActionController::Base.helpers.asset_path("placeholder.png")
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :children, dependent: :destroy
  has_many :profile_researches, dependent: :destroy
  has_many :chatrooms
  has_many :messages, through: :chatrooms
  has_many :matches, through: :profile_researches, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :alternance, presence: true
  validates :rythm, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

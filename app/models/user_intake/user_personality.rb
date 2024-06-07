module UserIntake
  class UserPersonality
    include ActiveModel::Model

    attr_accessor :cleanliness, :lifestyle, :sharing, :cooking, :storage

    # validates :cleanliness, presence: true
    # validates :lifestyle, presence: true
    # validates :sharing, presence: true
    # validates :cooking, presence: true
    # validates :storage, presence: true
    # validates :email, presence: true, uniqueness: true
  end
end

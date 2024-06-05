module UserIntake
  class PersonalInformation
    include ActiveModel::Model

    attr_accessor :tagline, :long_description

    validates :tagline, presence: true
    validates :long_description, presence: true
    # validates :email, presence: true, uniqueness: true
  end
end

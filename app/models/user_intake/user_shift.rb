module UserIntake
  class UserShift
    include ActiveModel::Model

    attr_accessor :alternance, :rythm

    validates :alternance, presence: true
    validates :rythm, presence: true
    # validates :email, presence: true, uniqueness: true
  end
end

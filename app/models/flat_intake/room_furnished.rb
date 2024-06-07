module FlatIntake
  class RoomFurnished
    include ActiveModel::Model

    attr_accessor :rooms, :is_furnished

    validates :rooms, presence: true
    validates :is_furnished, presence: true
  end
end

module FlatIntake
  class FlatStyle
    include ActiveModel::Model

    attr_accessor :style

    validates :style, presence: true
  end
end

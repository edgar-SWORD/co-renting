module UserIntake
  class UserBudget
    include ActiveModel::Model

    attr_accessor :min_budget, :max_budget

    validates :min_budget, presence: true
    validates :max_budget, presence: true
    # validates :email, presence: true, uniqueness: true
  end
end

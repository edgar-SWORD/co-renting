module UserIntake
  class UserBudgetsController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[new create]
    def new
      @user_budget = UserBudget.new
    end

    def create
      @user_budget = UserBudget.new(user_params)
      @user = current_user
      if @user_budget.valid?
        @user.update(user_params)

      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def user_params
      params.require(:user_intake_user_budget).permit(:min_budget, :max_budget)
    end
  end
end

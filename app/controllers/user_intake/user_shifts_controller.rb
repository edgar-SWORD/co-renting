module UserIntake
  class UserShiftsController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[new create]
    def new
      @user_shift = UserShift.new
    end

    def create
      @user_shift = UserShift.new(user_params)
      @user = current_user
      if @user_shift.valid?
        @user.update(user_params)
        redirect_to new_profile_research_path
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def user_params
      params.require(:user_intake_user_shift).permit(:alternance, :rythm)
    end
  end
end

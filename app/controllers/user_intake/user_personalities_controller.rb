module UserIntake
  class UserPersonalitiesController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[new create]
    def new
      @user_personality = UserPersonality.new
    end

    def create
      @user_personality = UserPersonality.new(user_personality_params)
      @user = current_user
      if @user_personality.valid?
        @user.update(user_personality_params)
        redirect_to new_flat_intake_flat_style_path
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def user_personality_params
      params.require(:user_intake_user_personality).permit(:cleanliness, :lifestyle, :sharing, :cooking, :storage)
    end
  end
end

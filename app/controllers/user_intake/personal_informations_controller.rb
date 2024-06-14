module UserIntake
  class PersonalInformationsController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[new create]
    
    def new
      @personal_information = PersonalInformation.new
    end

    def create
      @personal_information = PersonalInformation.new(user_params)
      @user = current_user
      if @personal_information.valid?
        @user.update(user_params)
        redirect_to new_user_intake_user_shift_path
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def user_params
      params.require(:user_intake_personal_information).permit(:tagline, :long_description)
    end
  end
end

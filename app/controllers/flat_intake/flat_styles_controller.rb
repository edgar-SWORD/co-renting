module FlatIntake
  class FlatStylesController < ApplicationController
    def new
      @flat = FlatStyle.new
      @user = current_user
    end

    def create
      @user = current_user
      @profile_research = @user.profile_researches.last
      @flat = @profile_research.flat
      @flat_style = FlatStyle.new(flat_params)
      if @profile_research.latitude.nil?
        @profile_research.geocode
        @profile_research.save
      end
      if @flat_style.valid?
        @flat.update(flat_params)
        redirect_to users_path(location: @profile_research.location, alternance: @user.alternance == "even" ? "odd" : "even", rooms: @flat.rooms)
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def flat_params
      params.require(:flat_intake_flat_style).permit(:style)
    end
  end
end

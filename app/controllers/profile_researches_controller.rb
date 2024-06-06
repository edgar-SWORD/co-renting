class ProfileResearchesController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[new create]

  def new
    @profile_research = ProfileResearch.new
  end

  def create
    @profile_research = ProfileResearch.new(location_params)
    @profile_research.user = current_user
    if @profile_research.save
      redirect_to some_path, notice: 'Profile research was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def location_params
    params.require(:profile_research).permit(:location)
  end

end

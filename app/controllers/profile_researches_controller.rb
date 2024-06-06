class ProfileResearchesController < ApplicationController

  def index
    @profile_researches = ProfileResearch.all
    @markers = @profile_researches.geocoded.map do |a|
      {
        lat: a.latitude,
        lng: a.longitude,
        info_window_html: render_to_string(partial: "profile_researches/info_window", locals: {a: a}, formats: :html)
      }
    end
  end
  
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

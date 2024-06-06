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

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

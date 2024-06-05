class FlatsController < ApplicationController
  def new
    @flat = Flat.new
    @user = current_user
  end

  def create
    @user = current_user
    @flat = Flat.new(flat_params)
    if @flat.save
      @profile_research = ProfileResearch.create(user: @user, flat: @flat)
      redirect_to "/flats/new"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def flat_params
    params.require(:flat).permit(:rooms, :is_furnished, :style)
  end
end

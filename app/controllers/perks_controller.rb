class PerksController < ApplicationController
  def new
    @perk = Perk.new
    @user = current_user
  end

  def create
    @user = current_user
    @profile_research = ProfileResearch.find_by(user_id: @user.id)
    @flat = @profile_research.flat
    @perk = Perk.new(perk_params)
    if @perk.save
      @flat_perk = FlatPerk.create(flat: @flat, perk: @perk)
      redirect_to "/perks/new"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def perk_params
    params.require(:perk).permit(:name)
  end
end

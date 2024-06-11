class FlatPerksController < ApplicationController

  def index
    @flat_perks = FlatPerk.all
  end

  def new
    @good_perks = Perk.all.where(status: "positive")
    @bad_perks = Perk.all.where(status: "negative").uniq

    @flat_perks = FlatPerk.all
    @flat_perk = FlatPerk.new
  end

  def create
    @flat_perk = FlatPerk.new
    if @flat_perk.save
      redirect_to  new_user_intake_user_personality_path
    else
      render :new, status: :unprocessable_entity
    end

  end
end

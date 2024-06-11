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
    @flat = current_user.profile_researches.last.flat
    params[:flat_perk][:perk].each do |perk_id|
      FlatPerk.create(flat: @flat, perk_id: perk_id.to_i)
    end

    redirect_to new_flat_intake_flat_style_path
  end

end

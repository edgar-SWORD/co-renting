class FlatPerksController < ApplicationController

  def index
    @flat_perks = FlatPerks.all
  end

  def new
    @flat_perk = FlatPerk.new
  end

  def create
    @flat_perk = FlatPerk.new

    if @flat_perk.save
      redirect_to  new_flat_intake_flat_style_path
    else
      render :new, status: :unprocessable_entity
    end

  end

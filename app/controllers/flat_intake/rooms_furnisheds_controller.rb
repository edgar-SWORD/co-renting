module FlatIntake
  class RoomsFurnishedsController < ApplicationController
    def new
      @flat_furniture = RoomFurnished.new
      @user = current_user
    end

    def create
      @flat_furniture = RoomFurnished.new(flat_params)
      @user = current_user
      if @flat_furniture.valid?
        @flat = Flat.new(flat_params)
        @profile_research = @user.profile_researches.last.update(flat: @flat)
        redirect_to new_flat_perk_path
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def flat_params
      params.require(:flat_intake_room_furnished).permit(:rooms, :is_furnished, :style)
    end
  end
end

module FlatIntake
  class FlatStylesController < ApplicationController
    def new
      @flat = Flat.new
      @user = current_user
    end

    def update
      @user = current_user
      @flat = Flat.find(params[:id])
      if @flat.save
        @profile_research = ProfileResearch.update(user: @user, flat: @flat)
        redirect_to users_path
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def flat_params
      params.require(:flat).permit(:rooms, :is_furnished, :style)
    end
  end
end

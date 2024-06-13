class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :find_chatroom, only: [:show], if: :user_logged

  def index
    @users = User.all

    if params[:location].present?
      ids = ProfileResearch.near(params[:location], 10).map(&:user_id)
      @users = @users.where(id: ids)
    end

    if params[:rythm].present?
      @users = @users.where(rythm: params[:rythm])
    end

    if params[:alternance].present?
      @users = @users.where(alternance: params[:alternance])
    end

    if params[:min_budget].present?
      @users = @users.where('min_budget >= ?', params[:min_budget].to_i)
    end

    if params[:max_budget].present?
      @users = @users.where('max_budget <= ?', params[:max_budget].to_i)
    end

    if params[:rooms].present?
      @users = @users.joins(profile_researches: :flat).where("flats.rooms <= ?", params[:rooms])
    end

    @markers = @users.map do |user|
      profile_research = user.profile_researches.last
      {
        lat: profile_research.latitude,
        lng: profile_research.longitude,
        info_window_html: render_to_string(partial: "profile_researches/info_window", locals: { a: profile_research }, formats: :html)
      }
    end

    respond_to do |format|
      format.html
      format.json { render json: { markers: @markers } }
    end
  end

  def show
    set_user
    @children = @user.children
    profile_research = ProfileResearch.where(user_id: @user.id).last


    if profile_research
      @flat = Flat.find(profile_research.flat_id)
      @perks = @flat.perks
      @markers =
        [{
          lat: profile_research.latitude,
          lng: profile_research.longitude,
          # info_window_html: render_to_string(partial: "profile_researches/info_window", locals: {a: a}, formats: :html)
        }]
    else
      @flat = nil
      @perks = []
    end
  end

  private

  def find_chatroom
    current_user_id = current_user.id
    other_user_id = params[:id]

    current_user_profile = User.find(current_user_id)
    current_user_profile_research = ProfileResearch.find_by(user: current_user_id)
    @other_user_profile = User.find(other_user_id)
    other_user_profile_research = ProfileResearch.find_by(user: other_user_id)

    @couple = Couple.find_or_create_by!(first_profile: current_user_profile_research, second_profile: other_user_profile_research)
    @chatroom = Chatroom.find_or_create_by!(couple: @couple)
    @message = Message.new
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_logged
    current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :alternance, :rythm, :min_budget, :max_budget, :cleanliness, :cooking)
  end
end

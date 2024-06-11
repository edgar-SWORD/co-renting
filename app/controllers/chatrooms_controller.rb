class ChatroomsController < ApplicationController
  before_action :set_user

  def index
    profile_research_ids = @profile_researches.ids
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    current_user_id = current_user.id
    other_user_id = params[:user_id]

    # Assurez-vous que les profils existent dans la table profile_researches
    current_user_profile = User.find(current_user_id)
    current_user_profile_research = ProfileResearch.find_by(user: current_user_id)
    other_user_profile = User.find(other_user_id)
    other_user_profile_research = ProfileResearch.find_by(user: other_user_id)

    # Cherchez ou créez le couple
    @couple = Couple.find_or_create_by!(first_profile: current_user_profile_research, second_profile: other_user_profile_research)

    # Cherchez ou créez le chatroom
    @chatroom = Chatroom.find_or_create_by!(couple: @couple)

    redirect_to chatroom_path(@chatroom)
  end

  private

  def set_user
    @user = current_user
    @profile_researches = ProfileResearch.where(user_id: @user.id)
  end
end

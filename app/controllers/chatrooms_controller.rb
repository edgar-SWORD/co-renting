class ChatroomsController < ApplicationController
  before_action :set_user

  def index
    @couples = current_user.couples.includes(chatroom: :messages)
    @last_messages = @couples.each_with_object({}) do |couple, hash|
      last_message = couple.chatroom.messages.order(created_at: :desc).first
      hash[couple.chatroom.id] = {
        content: last_message&.content || "No messages yet",
        created_at: last_message&.created_at
      }
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    current_user_id = current_user.id
    other_user_id = params[:user_id]

    current_user_profile = User.find(current_user_id)
    current_user_profile_research = ProfileResearch.find_by(user: current_user_id)
    other_user_profile = User.find(other_user_id)
    other_user_profile_research = ProfileResearch.find_by(user: other_user_id)

    @couple = Couple.find_or_create_by!(first_profile: current_user_profile_research, second_profile: other_user_profile_research)
    @chatroom = Chatroom.find_or_create_by!(couple: @couple)

    redirect_to chatroom_path(@chatroom)
  end


  private

  def set_user
    @user = current_user
    @profile_researches = ProfileResearch.where(user_id: @user.id)
  end
end

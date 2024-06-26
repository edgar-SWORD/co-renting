class ChatroomsController < ApplicationController
  before_action :set_user

  def index
    Couple.all.each { |couple| couple.first_profile == couple.second_profile ? couple.destroy : couple}
    @couples = (current_user.first_couples + current_user.second_couples).select do |couple|
      couple.chatroom.messages.any?
    end
    @last_messages = @couples.each_with_object({}) do |couple, hash|
      last_message = couple.chatroom.messages.order(created_at: :desc).first
      hash[couple.chatroom.id] = {
        content: last_message.content,
        created_at: last_message.created_at
      }
    end
    if params[:id]
      @chatroom = Chatroom.find(params[:id])
      @message = Message.new
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    respond_to do |format|
      format.html
      format.json do
        render json: {
          html: render_to_string(partial: 'chatrooms/chatroom', locals: {chatroom: @chatroom, user: current_user, message: @message }, formats: :html, layout: false)
        }
      end
    end
  end

  def create
    current_user_id = current_user.id
    other_user_id = params[:user_id]

    current_user_profile = User.find(current_user_id)
    current_user_profile_research = ProfileResearch.where(user: current_user_id).last
    other_user_profile = User.find(other_user_id)
    other_user_profile_research = ProfileResearch.where(user: other_user_id).last

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

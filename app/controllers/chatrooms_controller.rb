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
    # create_table "couples", force: :cascade do |t|
    #   t.bigint "first_profile_id", null: false
    #   t.bigint "second_profile_id", null: false

    # create_table "chatrooms", force: :cascade do |t|
    #   t.bigint "couple_id", null: false

    # TODO: a modifier une fois que la feature de creation de Couple est fonctionnelle

    # nous meme : current_user
    # notre id : current_user.id

    # l'id de l'autre : params[:user_id]



    @couple = Couple.where(
      "(first_profile_id = :current_user_id AND second_profile_id = :other_user_id)
      OR
      (first_profile_id = :other_user_id AND second_profile_id = :current_user_id)",
      current_user_id: current_user.id,
      other_user_id:   params[:user_id]
    ).first
    @couple ||= Couple.create!(first_profile_id: current_user.id, second_profile_id: params[:user_id])

    @chatroom = Chatroom.find_or_create_by!(couple: @couple)

    redirect_to chatroom_path(@chatroom)

  end

  private

  def set_user
    @user = current_user
    @profile_researches = ProfileResearch.where(user_id: @user.id)
  end
end

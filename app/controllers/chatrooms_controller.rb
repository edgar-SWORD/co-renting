class ChatroomsController < ApplicationController
  def index
  end

  def show
    @chatroom = Chatroom.find(params[:id])
  end
end

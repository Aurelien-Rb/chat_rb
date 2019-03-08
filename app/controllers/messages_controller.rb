class MessagesController < ApplicationController
  attr_accessor :content
  attr_accessor :user_id
  
  def show
    @messages = Message.find(params[:id])
  end

  def create
    @user = current_user
    @room = params['room_id']
 		@message = Message.new(content: params['message']['content'],user: @user,room_id: @room)
    @message.save

    redirect_to room_path(@room)
  end 
  
  def index 
    @message = Message.all
  end

 
end
class MessagesController < ApplicationController
  attr_accessor :content
  def show
    @messages = Message.find(params[:id])
  end

 
  def index
    @message = Message.all
  end

 
end
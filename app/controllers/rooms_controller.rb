class RoomsController < ApplicationController
	before_action :authenticate_user! 
	attr_accessor :name

	def index
		@rooms = Room.all
	end 

	def show
		@room = Room.find(params[:id])
		@message = Message.new
	end

	def create 
		@user = current_user.id
	end 

	
end

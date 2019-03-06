class RoomsController < ApplicationController
	attr_accessor :name

	def index
		@rooms = Room.all
	end

	def show
		@room = Room.find(params[:id])
	end

	
end

class RoomsController < ApplicationController
	def index
		@rooms = Room.where(:user.id => current_admin)
	end
	
end

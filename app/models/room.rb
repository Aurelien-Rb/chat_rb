class Room < ApplicationRecord
	has_and_belongs_to_many :users
	has_many :messages

	def label
	 "#{id} - #{name}"
	end
		
	rails_admin do 
  		object_label_method :label
  	end

end

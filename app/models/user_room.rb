class UserRoom < ApplicationRecord
	has_many :user
	has_many :room
	
end
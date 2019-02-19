class UserRoom < ApplicationRecord
	has_many :users
	has_many :rooms

	validates :users, presence: true
	validates :rooms, presence: true
end

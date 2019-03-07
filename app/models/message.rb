class Message < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :room, required: false
end

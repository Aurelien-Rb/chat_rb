class DroproomUsers < ActiveRecord::Migration[5.2]
  def change
  	 drop_table :room_users
  end
end

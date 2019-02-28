class CreateUserRoom < ActiveRecord::Migration[5.2]
  def change
    create_table :user_rooms do |t|
      t.references :id_user, foreign_key: true
      t.references :id_room, foreign_key: true
    end
  end
end

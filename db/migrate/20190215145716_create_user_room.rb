class CreateUserRoom < ActiveRecord::Migration[5.2]
  def change
    create_table :user_room do |t|
      t.references :users, foreign_key: true
      t.references :rooms, foreign_key: true
    end
  end
end

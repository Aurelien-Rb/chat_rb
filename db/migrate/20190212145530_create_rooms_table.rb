class CreateRoomsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.datetime :created_at
    end
  end
end

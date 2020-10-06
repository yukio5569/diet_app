class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.integer :user_id,         foreign_key: true
      t.integer :room_id,         foreign_key: true
      t.timestamps
    end
  end
end

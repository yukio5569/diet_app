class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :user_id,         foreign_key: true
      t.string :title,            null: false, default: ""
      t.text :content,            null: false
      t.timestamps
    end
  end
end

class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id,         foreign_key: true
      t.string :age,              null: false, default: ""
      t.string :height,           null: false, default: ""
      t.string :weight,           null: false, default: ""
      t.string :profession,       null: false, default: ""
      t.string :hobby,            null: false, default: ""
      t.text   :introduction,     null: false
      t.timestamps
    end
  end
end

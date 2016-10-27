class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :attribute
      t.string :description
      t.integer :game_id

      t.timestamps
    end
  end
end

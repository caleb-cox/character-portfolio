class CreateAttributes < ActiveRecord::Migration[5.0]
  def change
    create_table :attributes do |t|
      t.string :name
      t.integer :value
      t.integer :game_id

      t.timestamps
    end
  end
end

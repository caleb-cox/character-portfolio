class CreateTalentsJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :characters, :talents do |t|
      # t.index [:character_id, :talent_id]
      # t.index [:talent_id, :character_id]
    end
  end
end

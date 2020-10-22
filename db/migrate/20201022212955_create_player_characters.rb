class CreatePlayerCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :player_characters do |t|
      t.integer :player_id
      t.integer :character_id
    end 
  end
end

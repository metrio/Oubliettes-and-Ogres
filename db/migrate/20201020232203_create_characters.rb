class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :char_class
      t.integer :health_points
      t.integer :exp_points
      t.string :stats
      t.boolean :adventuring_party
      t.integer :adventure_id
      t.integer :player_id
    end
  end
end

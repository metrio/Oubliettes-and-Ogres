class CreateItemWeapons < ActiveRecord::Migration[6.0]
  def change
    create_table :item_weapons do |t|
      t.string :name
      t.string :stats_bonus
      t.integer :character_id
      t.integer :adventure_id
    end
  end
end

class CreateMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :health_points
      t.string :attack
      t.integer :adventure_id
    end
  end
end

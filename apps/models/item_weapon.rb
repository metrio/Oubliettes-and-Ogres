    # t.string :name
    # t.string :stats_bonus
    # t.integer :character_id
    # t.integer :adventure_id

class ItemWeapon < ActiveRecord::Base
    belongs_to :adventure
    

 

    
end
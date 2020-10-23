    # t.string :name
    # t.integer :health_points
    # t.string :attack
    # t.integer :adventure_id

require 'pry'
class Monster < ActiveRecord::Base
    belongs_to :adventure
    
    
    def attack
        attack_roll = rand(1..20)
        if attack_roll >= 14
            character.health_points - self.attack
        elsif attack_roll == 1
            self.health_points - self.attack
        binding.pry
        else 
            puts "#{self.name} missed"
        end
    end
 
    def self.encounter
        Monster.all.select {|monster| monster.name != "Black Wyrmling Dragon"}.sample
    end

    def self.boss_encounter
        boss =  Monster.find {|monster| monster.name = "Black Wyrmling Dragon"}
    end


end
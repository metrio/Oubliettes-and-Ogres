    # t.string :name
    # t.integer :health_points
    # t.string :attack
    # t.integer :adventure_id

require 'pry'
class Monster < ActiveRecord::Base
    belongs_to :adventure
    

def attack
    success = rand(1..20)
    if success >= character.armor_class
        character.health_points - self.attack
    elsif success == 1
        self.health_points - self.attack
    else puts "#{self.name} missed"
    end
end
 
def self.encounter
    Monster.all.select {|monster| monster.name != "Black Wrymling Dragon"}.sample
end


def self.boss_encounter
  boss =  Monster.find {|monster| monster.name = "Black Wrymling Dragon"}
end


end
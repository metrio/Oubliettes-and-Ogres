class Monster < ActiveRecord::Base
    belongs_to :adventure
    
    
    monster_array=[
        rat = Monster.new(name:"Rat", health_points: 1, attack: 1),
        kobolt = Monster.new(name:"Kobolt", health_points: 59, attack: 7),
        ogre = Monster.new(name:"Ogre", health_points: 75, attack: 9),
        black_dragon = Monster.new(name:"Black Wrymling Dragon", health_points: 120, attack: 14)]

def attack
    success = rand(1..20)
    if success >= character.armor_class
        character.health_points - self.attack
    elsif success == 1
        self.health_points - self.attack
    else puts "#{self.name} missed"
    end
end


end
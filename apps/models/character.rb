class Character < ActiveRecord::Base
    belongs_to    :adventure 
    belongs_to    :player


    def character_choice
        Character.all
    end #see what this does without it, but later


    def self.charac_info
        Character.all.each do |character|
            puts " "
            puts "#{character.name}, their class is #{character.char_class}, race #{character.race}"
        end
    end

    def self.hero_attack
        success = rand(1..20)
        if success >= 14
            monster.health_points - rand(1..8)
        else puts "#{self.name} missed"
        end
    end
 
end #end of Character
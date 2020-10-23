class Character < ActiveRecord::Base
    belongs_to    :adventure 
    belongs_to    :player


    def character_choice
        Character.all
    end #see what this does without it, but later


    def self.charac_info
        Character.all.each do |character|
            puts " "
            puts "#{character.name}, is a  #{character.race} #{character.char_class}. They wield a #{character.stats}"
        end
    end

    def my_char
        PlayerCharacter.id = CLI.ass_char 
    end

    # def hero_attack
    #     success = rand(1..20)
    #     if success >= 14
    #         puts "Aha! A hit!"
    #         monster.health_points - rand(1..8)
    #     else puts "#{self.name} missed"
    #     end
    # end
 
end #end of Character
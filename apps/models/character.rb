class Character < ActiveRecord::Base
    belongs_to    :adventure 
    belongs_to    :player


    def character_choice
        Character.all
    end 


    def self.charac_info
        Character.all.each do |character|
            puts " "
            puts "#{character.name}, is a  #{character.race} #{character.char_class}. They wield a #{character.stats}"
        end
    end

    def my_char
        PlayerCharacter.id = CLI.ass_char 
    end

    
 
end #end of Character
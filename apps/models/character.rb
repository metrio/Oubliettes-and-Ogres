class Character < ActiveRecord::Base
    belongs_to    :adventure 
    belongs_to    :player


    def character_choice
        Character.all
    end

    def self.charac_info
        Character.all.each do |character|
            puts " "
            puts "#{character.name}, their class is #{character.char_class}, race #{character.race}"
        end
    end

end #end of Character
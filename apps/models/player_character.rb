class PlayerCharacter < ActiveRecord::Base
    has_many :player 
    has_many :character 
    #double check many to many

    #method for joining player and character id after character is chosen
    
    @@monster = nil 

    def self.current_char
        self.ids.last
    end

    def hero_attack
        success = rand(1..20)
        if success >= 14
            puts "Aha! A hit!"
        else puts "You missed"
        end
    end
end
 

# playercharacter = gets 
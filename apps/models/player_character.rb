class PlayerCharacter < ActiveRecord::Base
    has_many :player 
    has_many :character 
    
    
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
 


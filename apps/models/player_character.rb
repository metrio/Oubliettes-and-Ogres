class PlayerCharacter < ActiveRecord::Base
    has_many :player 
    has_many :character 
    #double check many to many

    #method for joining player and character id after character is chosen
    
    
    def self.current_char
        self.ids.last
     end
end
 

# playercharacter = gets 
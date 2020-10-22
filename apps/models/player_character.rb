class PlayerCharacter < ActiveRecord::Base
    has_many :player 
    has_many :character 
    #double check many to many

    #method for joining player and character id after character is chosen
    

    def charchar
        
    end
end


# playercharacter = gets 
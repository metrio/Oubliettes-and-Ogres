class Adventure < ActiveRecord::Base  
    has_many    :item_weapon
    has_many    :character
    has_many    :monster
    @@prompt = TTY::Prompt.new

    def explore
        puts " "
        puts "Welcome to the Dungeon of Module 1, Ogres and Dragons await you."
        puts " "
        
    end
end
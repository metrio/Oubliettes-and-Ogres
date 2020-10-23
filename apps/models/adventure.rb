

class Adventure < ActiveRecord::Base  
    has_many    :item_weapon
    has_many   :character
    has_many    :monster
    has_many    :player, through: :character
    has_many    :player_character, through: :character
    @@prompt = TTY::Prompt.new


   
    def self.boss
        Monster.boss_encounter
    end

  
    def self.leg_one

        4.times do 
            choices = {"forward" => 1, "right" => 2, "left" => 3, "go back" => 4}
            @@prompt.select("Which way?", choices)
        end
    end

    def self.leg_two
        puts "Wow what a close encounter"
        puts "Now that we are safe, lets continue on"
        4.times do 
            choices = {"forward" => 1, "right" => 2, "left" => 3, "go back" => 4}
            @@prompt.select("Which way?", choices)
        end
    end

    def self.leg_three
        puts "You hear a thundering sound at the distance"
        puts "Do you dare try to get closer?"
        4.times do 
            choices = {"forward" => 1, "right" => 2, "left" => 3, "go back" => 4}
            @@prompt.select("Which way?", choices)
        puts "The sound gets closer"
        end
        puts "Its here the #{Adventure.boss.name} has appeared"
    end
        

end #End of Adventure
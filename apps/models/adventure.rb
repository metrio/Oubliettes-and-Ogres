#t.string :location

class Adventure < ActiveRecord::Base  
    has_many    :item_weapon
    has_many   :character
    has_many    :monster
    has_many    :player, through: :character
    has_many    :player_character, through: :character
    @@prompt = TTY::Prompt.new

#    if Character.find_by(name: "Elta").id == PlayerCharacter.character_id
#     elta.weapon_attack
    def item
    end

    def weapon_attack
        #if dagger
#     rand# gen. > 14
        #dragon.hp - rand # 1..8
        #else
        #puts "Oh no! You missed!"
    end
    def spell_attack
     #if spell
        #rand # > 12
        #dragon.hp - rand #1..6
        #else
        #puts "Dragon dodged that spell! Watch out!"
    end

   
    def self.boss
        Monster.boss_encounter
    end

  
    def self.leg_one
    #    n = rand(4..10)
    #     n = 0
    #     loop do 
    #     n += 1
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
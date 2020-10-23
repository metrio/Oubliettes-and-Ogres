#t.string :location

class Adventure < ActiveRecord::Base  
    has_many    :item_weapon
    has_many    :character
    has_many    :monster
    has_many    :player, through: :character
    has_many    :player_character, through: :character
    @@prompt = TTY::Prompt.new

   
 
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

    def self.enemy 
        Monster.encounter
    end

    def self.boss
        Monster.boss_encounter
    end

    def self.fight
        enemy = self.enemy
        choices = {"Attack!" => 1, "Wait.." => 2, "Run Away!!!!" => 3}
        choice = @@prompt.select("Its a #{enemy.name}!", choices)

        
        if choice == 1
            Character.hero_attack #placeholder need to interpolate char.name
        elsif choice == 2
            enemy.attack
        else
            exit!
        end
    end

#FCharacter.find_by(id:)
         # char_id =  PlayerCharacter.current_char
        # binding.p!!ry
        # charchar = Character.find_by(id: char_id)
    
    def self.leg_one
       # n = rand(4..10)
        n = 0
        loop do 
        n += 1
        choices = {"left" => 1, "right" => 2, "forward" => 3, "go back" => 4}
        @@prompt.select("Which way?", choices)
        if n >= 3
            break
            end
        end
    end

    

   

end #End of Adventure

class Adventure < ActiveRecord::Base  
    has_many    :item_weapon
    has_many    :character
    has_many    :monster
    has_many    :player, through: :character
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

    def enemy 
        Monster.encounter
    end

    def boss
        Monster.boss_encounter
    end


    def fight
        puts "You come upon a #{dragon.name}"
        @@prompt
    end   
    
    
        
    
    # def moving_through
    #     move = @@prompt 

    #    # do loop (condition after certain number of inputs boss encounter)

    #     case move
        
    #     when 1 #forward
    #         puts "you move further into the dungeon"
    #     when 2 #left
    #         puts "you take a left and continue down the hall"
    #     when 3 #right
    #         puts "you continue your search to the right"
    #     when 4 #go back
    #         puts "you come to a dead end, you go back"
    #     end

    # end
   

end #End of Adventure
require 'tty-prompt'
require 'pry'

class CLI
    @@prompt = TTY::Prompt.new
    @@player = nil
    @@character = nil
    @@adventure = nil
    @@monster = nil
    @@player_character = nil #added this in to be able create PlayerCharacter class instance I think
        
    def system_clear
        sleep(2)
        system('clear') 
    end

    def main_menu       
        system('clear')
        puts "Welcome to Oubliettes & Ogres"
        self.make_user
    end

    def make_user
        sleep(1.5)
        choices = { "Sign up" => 1, "Log in" => 2, "Exit" => 3} 
        choice = @@prompt.select("Would you like to sign up or log in?", choices)
        if choice == 1
            Player.signup
        elsif choice == 2
            Player.login
        else choice == 3
            exit!
        end
        self.meet_character    
    end

    def meet_character
        system('clear')
        puts "Meet our heroes"
        Character.charac_info 
        sleep(2)
        self.ass_char
    end

    def ass_char    
        
        puts " "
        choice = @@prompt.select("Time to choose your character!", %w(Luvic Talvi Elta Airgan))
        character = Character.find_by(name: choice).id
        PlayerCharacter.create(player_id: Player.current ,character_id: character)     
        self.preamble
    end
    def preamble
        system('clear') #ascii art if time
        puts "The legends say there's a great treasure in these dungeons..."
        puts " "
        sleep(2.5)
        puts "But no one has ever come back from their quest."
        puts " "
        sleep(2.5)
        puts "Local lore tells of a dragon."
        puts " "
        sleep(2.5)
        puts "Treasure, or dragon? Riches beyond your wildest dreams, or a fiery death?"
        puts " "
        sleep(2.5)
        puts "You've set out early on your quest. It's mid-day and the sun is high."
        puts " "
        sleep(3.5)
        self.enter_dungeon 
    end

    def enter_dungeon
        system('clear')
        choices = { "Yes" => 1,  "No" => 2} 
        choice = @@prompt.select("You finally come upon the fabled dungeon, do you dare enter?", choices)
            if choice == 1
                puts "Cautiously you make your way through the entrance..."
            else choice == 2
                puts "Guess you'll live to adventure another day"
                self.system_clear
                exit!
            end
            sleep(1.5)
        self.map
    end

    def map
        system('clear')
        puts "Be careful what you choose, once you go back you cannot return."
        sleep(2)
        Adventure.leg_one
        system('clear') 
        puts "Oh no! What's that over there!"
        
       
        self.fight
    end

    def enemy 
        Monster.encounter
    end

  

    def fight
        enemy = self.enemy
        choices = {"Attack!" => 1, "Wait.." => 2, "Run Away!!!!" => 3}
         choice = @@prompt.select("Its a #{enemy.name}!", choices) 
         if choice == 1
            puts "You did it! You slayed the #{enemy.name}"
            self.system_clear
            Adventure.leg_two
         elsif choice == 2
            puts "The #{enemy.name} attacked first. You've died you weren't worthy"
            puts "Better luck next time. Goodbye"
            sleep(3)
            exit!
         else choice == 3
            puts "You've successfully avoided the #{enemy.name}"
            puts "Onward!" 
            self.system_clear
            Adventure.leg_two
        end
        self.system_clear
        puts "Ooh! What's that shiny thing?"
        self.system_clear
        self.find_treasure
    end

    def find_treasure 
        choices = {"Investigate" => 1, "Pick it up!" => 2, "Keep walking" => 3 }
        choice = @@prompt.select("You catch something glimmering in the corner of your eye, what do you do?", choices)
            if choice == 1
                puts "15 gold pieces! How lucky!"
                self.system_clear
                Adventure.leg_three
              
            elsif choice == 2
                puts "Oh no, you don't feel so good. That locket must have been poisoned!"
                puts "You slowly collapse to the dungeon floor..." 
                self.system_clear
                puts "You die alone and afraid. Waiting for eternity or until the next adventurer comes down these halls."
                sleep(2)
                exit!
            else 
                puts "You rush past what looks to be a large rats nest laced with gold pieces."
                puts "Better to not bother them, you've heard the rats here are not to be messed with."
                sleep(2)
                self.system_clear
                Adventure.leg_three
            end
            self.system_clear
            self.boss_fight
        end

        def boss_fight
            puts "The locals warned you about this, but you came anyway. Foolish"
            puts " "
            puts "Its a #{Adventure.boss.name}!"
           2.times do 
            choices = {"Attack!" => 1, "Wait.." => 2, "Run Away!!!!" => 3}
            choice = @@prompt.select("What do you want to do?!", choices) 
         if choice == 1
            puts "You draw blood! A worthy attack on a worthy foe."
            self.system_clear         
         elsif choice == 2
            puts "The #{Adventure.boss.name} attacked first. You've died you weren't worthy"
            puts "Better luck next time. Goodbye"
            sleep(3)
            exit!
         else choice == 3
            puts "You weren't fast enough. You've been eaten by the #{Adventure.boss.name}" 
            self.system_clear
            exit!
                end
                puts "The dragon tries to attack, you narrowly dodge"
            end
            self.system_clear
            puts "The dragon is hurting."
            puts "You go in to deal the final death blow!"
            puts " "
            puts "You did it! You slayed the #{Adventure.boss.name}"
            self.gather_trophy
        end

        def gather_trophy
            self.system_clear
            puts "You've proven your grit as an adventurer." 
            choices = {"Cut off it's head!" => 1, "Remove it's heart" => 2, "Just a scale will suffice, I know my worth" => 3}
            choice = @@prompt.select("What would you like to bring back to your village as a trophy?", choices)
            if choice == 1
                puts "You set to work removing the gruesome visage of the slain beast."
            elsif choice == 2
                puts "You stand victorious above the dragon, and plunge your dagger into it's chest to carve out it's heart."
                puts "Many a fantastic potion calls for dragon hearts."
            else choice == 3
                puts "You delicately prise off one glimmering obsidian scale."
            end
            sleep(4)
            self.game_end
        end

        def game_end
            self.system_clear
            puts "The bards will sing of this stunning victory for generations to come"
            sleep(5)
            exit!
        end

end #class end
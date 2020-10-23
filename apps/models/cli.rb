require 'tty-prompt'
require 'pry'

class CLI
    @@prompt = TTY::Prompt.new
    @@player = nil
    @@character = nil
    @@adventure = nil
    @@player_character = nil #added this in to be able create PlayerCharacter class instance I think
        
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
        sleep(3)
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
        sleep(2.5)
        puts "But no one has ever come back from their quest."
        sleep(2.5)
        puts "Local lore tells of a dragon."
        sleep(2.5)
        puts "Treasure, or dragon? Riches beyond your wildest dreams, or a fiery death?"
        sleep(2.5)
        puts "You've set out early on your quest. It's mid-day and the sun is high."
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
        # Adventure.fight
        # Monster.attack
            #neither of these attack methods work right now 03:17am, enemy.attack works within Adventure.fight though... got some stuff to think on...
    end




end #class end
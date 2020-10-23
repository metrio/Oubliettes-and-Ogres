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
        #sleep(1.5)
        self.make_user
    end

    def make_user
        sleep(1.5)
        choices = { "Log in" => 1, "Sign up" => 2, "Exit" => 3} 
        choice = @@prompt.select("Would you like to sign up or log in?", choices)
        if choice == 1
            Player.signup
        elsif choice == 2
            Player.login
        else choice == 3
            exit!
        # else #choice != 1 or 2 or 3
        #     puts "Are you an ogre?! Make a valid choice!" 
        #     #test that invalid choice this starts the method over
            self.make_user
        end
        self.meet_character    
    end

    def meet_character
        system('clear')
        puts "Meet your Character"
        Character.charac_info 
        self.ass_char
    end

    def ass_char    
        choice = @@prompt.select("Choose your character!", %w(Luvic Talvi Elta Airgan))
        character = Character.find_by(name: choice).id
        PlayerCharacter.create(player_id: Player.current ,character_id: character)     
        self.enter_dungeon
    end

    def enter_dungeon
        system('clear') #ascii art if time
        choices = { "Yes" => 1,  "No" => 2} 
        choice = @@prompt.select("You come upon a dungeon, do you dare enter?", choices)
            if choice == 1
                puts "Cautiously you make your way through the entrance..."
            else choice == 2
                exit!
            end
        
        self.map
    end

    def map
        puts "Be careful, once you go back you cannot return."
        Adventure.leg_one
        system('clear')
        
        puts "Oh no! What's that over there!"
        Adventure.fight
        Monster.attack

    end




end #class end
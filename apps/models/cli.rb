require 'tty-prompt'
require 'pry'

class CLI
    @@prompt = TTY::Prompt.new
    @@player = nil
    @@character = nil
    @@adventure = nil



    
    def main_menu       
        system('clear')
        puts "Welcome to Oubliettes & Ogres"
        #sleep(1.5)
        self.make_user
    end

    def make_user
        sleep(1.5)
        choices = { "Log in" => 1, "Sign up" => 2} 
        choice = @@prompt.select("Would you like to sign up or log in?", choices)
        if choice == 1
            Player.signup
        elsif choice == 2
            Player.login
        else
            puts "Make a valid choice, what are you, an ogre?!"
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
        PlayerCharacter.create(player_id: Player.current.id ,character_id: character)
        #find player instance.id, to pass into playercharacter.create
        
    end
        
        
        
        
        #choice = @@prompt.select("Pick your Character?") do |menu| #choice is a number
        #     menu.enum "."
          
        #     menu.choice "Luvic", 1
        #     menu.choice "Talvi", 2
        #     menu.choice "Elta", 3
        #     menu.choice "Airgan", 4

        #     case choice
        #     when 1
        #         character = Character.find_by(name:"Luvic").id
        #         player = Player.find_by(username:user).id
               
        #         PlayerCharacter.create(player_id: player, character_id: character)
        #     when 2
        #         # Character.find_by(name:"Talvi")
        #         # PlayerCharacter.create( talvi.id)
        #     when 3 
        #         # Character.find_by(name:"Elta")
        #         # PlayerCharacter.create( elta.id)
        #     when 4 
        #         # Character.find_by(name: "Airgan")
        #         # PlayerCharacter.create( airgan.id)
        
                
        
            
            #what's the answer to choice? Is it a number or a string
            #if a string then compare then Character.name == "choice"
            #if a number then we build cases to do something depending on the choice
        #  character = gets
        #     puts "Alright, (character) ready to go into the dungeon?"

        

      

      
        

          
       
       
       


        
       
    





end #class end
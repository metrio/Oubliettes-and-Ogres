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
        sleep(1.5)
    
        user = @@prompt.ask("Type in your Account Name:")
        puts " "
        pass = @@prompt.mask("Password")

        if Player.find_by(username: user) == nil
            Player.create(username: user, password: pass)
            puts " "
        elsif 
            Player.find_by(username: user, password: pass)
            puts ' '
        elsif 
            puts "Your account info was wrong"
        end
    end

    def pick_character
        system('clear')
        puts "Meet your Character"
        
        Character.charac_info 
        
        choice = @@prompt.select("Pick your Character?") do |menu| #choice is a number
            menu.enum "."
          
            menu.choice "Luvic", 1
            menu.choice "Talvi", 2
            menu.choice "Elta", 3
            menu.choice "Airgan", 4

            case choice
            when 1
                # Character.find_by(name:"Luvic")
                PlayerCharacter.create( luvic.id)
            when 2
                # Character.find_by(name:"Talvi")
                PlayerCharacter.create( talvi.id)
            when 3 
                # Character.find_by(name:"Elta")
                PlayerCharacter.create( elta.id)
            when 4 
                # Character.find_by(name: "Airgan")
                PlayerCharacter.create( airgan.id)
        
                
            end
            
            #what's the answer to choice? Is it a number or a string
            #if a string then compare then Character.name == "choice"
            #if a number then we build cases to do something depending on the choice
        #  character = gets
        #     puts "Alright, (character) ready to go into the dungeon?"

        
        end
        binding.pry
    end
      
        

          
       
       
       


        
       
    





end #class end
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
        
        picked = @@prompt.select("Pick your Character", %w(Luvic, Talvi, Elta, Airgan))

        
    
    end





end #class end
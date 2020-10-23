require 'tty-prompt'
require 'pry'

# t.string :username
# t.string :password
 
class Player < ActiveRecord::Base
    has_many :character
    has_many :adventure, through: :character

    @@prompt = TTY::Prompt.new

    def self.character
        self.all.select {|player| player.id == PlayerCharacter.player_id}
    end
    def self.login
        user = @@prompt.ask("Welcome back! What's your username?")
        puts " "
        dragon = @@prompt.decorate('🐉')
        pass = @@prompt.mask("Password", mask: dragon)
        self.find_by(username: user, password: pass) #creates an instance but doesn't assign it to variable/argument "user" or "@user"
        puts "Welcome back to Oubliettes & Ogres #{self.username}! Come, explore everything our spooky dungeons have to offer."
        sleep(3)
    end

    def self.signup
        user = @@prompt.ask("Create your User Name:")
        puts " "
        dragon = @@prompt.decorate('🐉')
        pass = @@prompt.mask("Password", mask: dragon)
        Player.create(username: user, password: pass)
        #@player = self.all.find_by(username: user, password: pass)
        puts "Welcome to Oubliettes & Ogres #{self.username}! Come, explore everything our spooky dungeons have to offer."
        sleep(2)
    end
    
    

    def self.current
       self.ids.last
    end

    


end #end of player
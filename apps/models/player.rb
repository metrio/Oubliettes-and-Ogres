require 'tty-prompt'
require 'pry'

# t.string :username
# t.string :password
 
class Player < ActiveRecord::Base
    has_many :character
    has_many :adventure, through: :character

    @@prompt = TTY::Prompt.new

    def self.signup
        user = @@prompt.ask("Type in your UserName:")
        puts " "
        pass = @@prompt.mask("Password")
        self.create(username: user, password: pass)
    end
    
    def self.login
        user = @@prompt.ask("Welcome back! What's your username?")
        puts " "
        pass = @@prompt.mask("Password")
        self.find_by(username: user, password: pass)
    end

    def self.current
       self.ids.last
    end

    


end #end of player
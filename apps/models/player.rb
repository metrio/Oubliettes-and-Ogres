require 'tty-prompt'
require 'pry'

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

    def current
        #is player logged in now
        #self.all.each {|x| x.username == self}.ids
        binding.pry
    end

    


end #end of player
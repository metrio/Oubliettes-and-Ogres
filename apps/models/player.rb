require 'tty-prompt'
require 'pry'

class Player < ActiveRecord::Base
    has_many :character

    @@prompt = TTY::Prompt.new





    def assign_character

    end


end #end of player
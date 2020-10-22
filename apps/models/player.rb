require 'tty-prompt'
require 'pry'

class Player < ActiveRecord::Base
    has_many :character
    has_many :adventure, through: :character

    @@prompt = TTY::Prompt.new





    def assign_character

    end


end #end of player
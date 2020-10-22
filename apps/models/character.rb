class Character < ActiveRecord::Base
    belongs_to    :adventure 
    belongs_to    :player


    
end
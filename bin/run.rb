require_relative '../config/environment'

require_all 'lib'
require_all "./apps"

new_adventure = Adventure.new(location:"Asgard")

new_adventure.explore

monster_array(1)
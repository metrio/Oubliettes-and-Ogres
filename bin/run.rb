require_relative '../config/environment'

require_all 'lib'
require_all "./apps"

cli = CLI.new

#cli.main_menu

cli.pick_character



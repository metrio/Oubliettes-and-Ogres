require 'pry'
require 'rest-client'
require 'json'
require_all 'lib'
require_all "apps"
 
############################################### Classes
api_response_class = RestClient.get("https://www.dnd5eapi.co/api/classes")
api_data_class = JSON.parse(api_response_class)
 
################################################ Races
 
api_response_race = RestClient.get("https://www.dnd5eapi.co/api/races")
api_data_race = JSON.parse(api_response_race)
 
############################################### Monsters
 
api_response_m1 = RestClient.get("https://www.dnd5eapi.co/api/monsters/rat")
api_data_m1 = JSON.parse(api_response_m1) #rat monster
 
api_response_m2 = RestClient.get("https://www.dnd5eapi.co/api/monsters/kobold")
api_data_m2 = JSON.parse(api_response_m2) #kobold monster
 
api_response_m3 = RestClient.get("https://www.dnd5eapi.co/api/monsters/ogre")
api_data_m3 = JSON.parse(api_response_m3)  #ogre monster
 
api_response_m4 = RestClient.get("https://www.dnd5eapi.co/api/monsters/black-dragon-wyrmling")
api_data_m4 = JSON.parse(api_response_m4) #teenage dragon


 
 ############################################### Item & Weapons

 api_response_item1 = RestClient.get("https://www.dnd5eapi.co/api/equipment/healers-kit")
 api_data_item1 = JSON.parse(api_response_item1) #healers-kit

 api_response_item2 = RestClient.get("https://www.dnd5eapi.co/api/equipment/wand")
 api_data_item2 = JSON.parse(api_response_item2) #wand

 api_response_item3 = RestClient.get("https://www.dnd5eapi.co/api/equipment/greatsword")
 api_data_item3 = JSON.parse(api_response_item3) #greatsword
 
 api_response_item4 = RestClient.get("https://www.dnd5eapi.co/api/equipment/sickle")
 api_data_item4 = JSON.parse(api_response_item4) #sickle

 api_response_item5 = RestClient.get("https://www.dnd5eapi.co/api/equipment/dagger")
 api_data_item5 = JSON.parse(api_response_item5)  #dagger

 api_response_item6 = RestClient.get("https://www.dnd5eapi.co/api/equipment/emblem")
 api_data_item6 = JSON.parse(api_response_item6)  #emblem

 api_response_item7 = RestClient.get("https://www.dnd5eapi.co/api/equipment/amulet")
 api_data_item7 = JSON.parse(api_response_item7)  #amulet
 


 classes = {
ranger: api_data_class["results"][7]["name"],
cleric:  api_data_class["results"][2]["name"],
wizard: api_data_class["results"][11]["name"],
rogue: api_data_class["results"][8]["name"]
}
 
races = {
    human: api_data_race["results"][7]["name"],
    elf: api_data_race["results"][2]["name"],
    dwarf: api_data_race["results"][1]["name"],
    tiefling: api_data_race["results"][8]["name"]
}
binding.pry

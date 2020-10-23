require 'pry'
require 'rest-client'
require 'json'
require_all 'lib'
require_all "./apps"
 

Player.destroy_all
Character.destroy_all
Adventure.destroy_all
ItemWeapon.destroy_all
Monster.destroy_all

############################################### Classes
api_response_class = RestClient.get("https://www.dnd5eapi.co/api/classes")
api_data_class = JSON.parse(api_response_class)
 
################################################ Races
  
api_response_race = RestClient.get("https://www.dnd5eapi.co/api/races")
api_data_race = JSON.parse(api_response_race)
 
 
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
 
# monster_array=[
# rat = Monster.new(name:"Rat", health_points: 1, attack: 1),
# kobolt = Monster.new(name:"Kobolt", health_points: 59, attack: 7),
# ogre = Monster.new(name:"Ogre", health_points: 75, attack: 9),
# black_dragon = Monster.new(name:"Black Wrymling Dragon", health_points: 120, attack: 14)]


ranger = api_data_class["results"][7]["name"]
cleric =  api_data_class["results"][2]["name"]
wizard = api_data_class["results"][11]["name"]
rogue = api_data_class["results"][8]["name"]

 
human = api_data_race["results"][7]["name"]
elf = api_data_race["results"][2]["name"]
dwarf = api_data_race["results"][1]["name"]
tiefling = api_data_race["results"][8]["name"]

rat = Monster.create(name:"Rat", health_points: 1, attack: 1)
kobolt = Monster.create(name:"Kobolt", health_points: 59, attack: 7)
ogre = Monster.create(name:"Ogre", health_points: 75, attack: 9)
black_dragon = Monster.create(name:"Black Wrymling Dragon", health_points: 120, attack: 14)


luvic = Character.create(name:"Luvic", race:tiefling, char_class:rogue, health_points: 27, exp_points: 0)
talvi = Character.create(name:"Talvi", race:elf, char_class:cleric, health_points: 23, exp_points: 0)
elta = Character.create(name:"Elta", race:human, char_class:ranger, health_points: 28, exp_points: 0)
airgan = Character.create(name: "Airgan", race:dwarf, char_class: wizard, health_points: 24, exp_points: 0)


map_one = Adventure.create(location: "map1")


amulet = ItemWeapon.create(name:"Amulet")
healers_kit =ItemWeapon.create(name:"Healers-kit")
dagger = ItemWeapon.create(name:"Dagger")
greatsword = ItemWeapon.create(name:"Greatsword")
sickle = ItemWeapon.create(name:"Sickle")
emblem = ItemWeapon.create(name:"Emblem")
wand = ItemWeapon.create(name:"Wand")

#create table to include stats for monsters and for characters





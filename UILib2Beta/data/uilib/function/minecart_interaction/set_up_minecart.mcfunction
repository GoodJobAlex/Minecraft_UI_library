scoreboard players add global.id uilib.id 1

scoreboard players operation @s uilib.id = global.id uilib.id
scoreboard players set @s uilib.page -1
data modify storage uilib:storage players.caches append from storage uilib:storage blank_cache
data modify storage uilib:storage players.current_page append value -1
summon item_display 0 10000 0 {teleport_duration:0,Tags:["interaction","uilib.init"],Passengers:[{id:"minecraft:interaction",width:1.2f,height:0.8f,Tags:["interaction_block"]},{id:"minecraft:chest_minecart",Silent:1b,Invulnerable:1b,Team:uilib.interactions,CustomDisplayTile:1b,Tags:["invisible","ui_interaction_entity"],DisplayState:{Name:"minecraft:air"}}]}
execute positioned 0 10000 0 run scoreboard players operation @n[type=item_display,tag=uilib.init] uilib.id = @s uilib.id
execute positioned 0 10000 0 run tag @n[type=item_display,tag=uilib.init] remove uilib.init
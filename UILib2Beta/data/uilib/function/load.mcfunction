scoreboard objectives add uilib.countdown dummy
scoreboard objectives add uilib.id dummy
scoreboard objectives add uilib.x_rotation dummy
scoreboard objectives add uilib.item dummy
scoreboard objectives add uilib.page dummy
scoreboard objectives add uilib.indexes dummy
execute unless data storage uilib:storage blank_cache run data modify storage uilib:storage blank_cache set value []
#declare storage uilib:storage
forceload add 0 0 1 1

team add uilib.interactions
team modify uilib.interactions collisionRule never

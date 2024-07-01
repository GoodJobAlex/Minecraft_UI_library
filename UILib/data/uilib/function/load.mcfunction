scoreboard objectives add uilib.countdown dummy
scoreboard objectives add uilib.id dummy
scoreboard objectives add uilib.item dummy
scoreboard objectives add uilib.page dummy
scoreboard objectives add uilib.indexes dummy
execute unless data storage uilib:storage blank_cache run data modify storage uilib:storage blank_cache set value []
#declare storage uilib:storage
forceload add 0 0 1 1
kill 00000461-0000-0925-0000-1d390000091b
summon item_frame 0 100000 0 {HasVisualFire:0b,UUID:[I;1121,2341,7481,2331],ItemDropChance:0f,Invulnerable:1b,Fixed:1b}

team add uilib.interactions
team modify uilib.interactions collisionRule never

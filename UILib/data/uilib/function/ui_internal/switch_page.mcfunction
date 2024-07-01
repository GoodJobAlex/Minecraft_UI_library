data remove entity @s Items
execute store result storage uilib:storage players.page_index int 1 run scoreboard players get @p uilib.page
execute if entity @p[tag=first_initiate] run function uilib:ui_internal/set_name with storage uilib:storage players
function uilib:ui_internal/refresh with storage uilib:storage players

tag @s remove first_initiate

function uilib:ui_internal/out_bounds_check with storage uilib:storage players

function uilib:ui_internal/loop_main with storage uilib:storage players
scoreboard players add @p uilib.indexes 1
execute store result storage uilib:storage players.index int 1 run scoreboard players get @p uilib.indexes
execute if score outbounds uilib.id matches 1 run function uilib:ui_internal/loop_through_cache_difference


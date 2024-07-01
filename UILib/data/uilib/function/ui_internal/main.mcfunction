#get player id and page number
execute store result storage uilib:storage players.player_id int 1 run scoreboard players get @p uilib.id
execute store result storage uilib:storage players.page_index int 1 run scoreboard players get @p uilib.page


function uilib:ui_internal/store_cache with storage uilib:storage players
execute if score temp uilib.id matches 1 run function uilib:ui_internal/loop_through_cache_difference
execute if data storage uilib:storage players.pop_back_item[0] run function uilib:ui_internal/pop_item_back_to_inventory
function uilib:ui_internal/commit_cache_change with storage uilib:storage players

#update the page
function uilib:ui_internal/refresh with storage uilib:storage players


#logic
#the player is now @p
#and the minecart is @s
function #uilib:ui_logics

#clear all the ui item in player
clear @p *[custom_data~{ui:item}]


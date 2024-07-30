$data modify storage uilib:storage players.temp_cache_test set from storage uilib:storage players.caches[$(player_id)][$(page_index)]
#check if there is change
data modify storage uilib:storage temp_current_cache set from entity @s Items
data remove storage uilib:storage temp_current_cache[{components:{"minecraft:custom_data":{ui:item}}}]
execute store success score temp uilib.id run data modify storage uilib:storage players.temp_cache_test set from storage uilib:storage temp_current_cache
#if yes check them and store them

execute if score temp uilib.id matches 1 run scoreboard players set @p uilib.indexes 0
execute if score temp uilib.id matches 1 run data modify storage uilib:storage players.index set value 0


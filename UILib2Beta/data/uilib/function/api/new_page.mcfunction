data modify entity @s Items.[].components."minecraft:custom_data" merge value {ui:item}
data modify storage uilib:storage Pages append from entity @s Items
data modify storage uilib:storage players.caches.[] append value []
data modify storage uilib:storage blank_cache append value []
execute store success score hasname uilib.page run data modify storage uilib:storage Names append from entity @p SelectedItem.components."minecraft:custom_name"
execute if score hasname uilib.page matches 0 run data modify storage uilib:storage Names append value '""'

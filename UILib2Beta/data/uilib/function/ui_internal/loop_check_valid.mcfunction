$execute store success score valid_slot uilib.id if data storage uilib:storage Pages[$(page_index)].[{Slot:$(cache_slot)b}]

execute if score valid_slot uilib.id matches 1 run data modify storage uilib:storage players.pop_back_item append from storage uilib:storage players.current_cache_item
$execute if score valid_slot uilib.id matches 1 run data remove storage uilib:storage players.temp_cache_test.[{Slot:$(cache_slot)b}]
$execute if score valid_slot uilib.id matches 1 run data remove entity @s Items.[{Slot:$(cache_slot)b}]




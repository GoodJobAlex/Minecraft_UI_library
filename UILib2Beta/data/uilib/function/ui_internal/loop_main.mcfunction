#get the current item
$data modify storage uilib:storage players.current_cache_item set from storage uilib:storage players.temp_cache_test[$(index)]
data modify storage uilib:storage players.cache_slot set from storage uilib:storage players.current_cache_item.Slot

#check if the changes are valid
function uilib:ui_internal/loop_check_valid with storage uilib:storage players
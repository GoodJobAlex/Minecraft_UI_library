$execute if score temp uilib.id matches 1 run data modify storage uilib:storage players.caches[$(player_id)][$(page_index)] set from storage uilib:storage players.temp_cache_test
execute if score temp uilib.id matches 1 run function uilib:ui_internal/initialize_data

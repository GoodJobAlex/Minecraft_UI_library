execute if entity @s[tag=interaction_block] run data merge entity @s {width:0f,height:0f}
execute if entity @s[type=chest_minecart] run function uilib:minecart_interaction/store_item

execute if entity @s[type=chest_minecart,tag=ui_interaction_entity] run function uilib:minecart_interaction/init_ui_entity
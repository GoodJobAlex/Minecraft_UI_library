execute as @e[tag=!uilib.model_added,tag=!invisible,type=#uilib:minecart_related] run function uilib:invisible_minecart/add_model

#main
execute as @a at @s as @e[tag=interaction,type=item_display] if score @s uilib.id = @p uilib.id run function uilib:minecart_interaction/minecart_operation



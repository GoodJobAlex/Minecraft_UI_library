advancement revoke @s only uilib:remove_interaction_interacted
advancement revoke @s only uilib:remove_interaction_attacked
execute at @s as @e[type=item_display,tag=interaction] if score @s uilib.id = @p uilib.id run function uilib:minecart_interaction/quit_functions

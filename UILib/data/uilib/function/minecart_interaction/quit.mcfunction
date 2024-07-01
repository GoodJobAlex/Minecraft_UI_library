advancement revoke @s only uilib:remove_interaction_interacted
advancement revoke @s only uilib:remove_interaction_attacked
execute at @s as @n[type=interaction,tag=interaction_block] on attacker if score @s uilib.id = @p uilib.id as @n[type=item_display,tag=interaction] run function uilib:minecart_interaction/moved

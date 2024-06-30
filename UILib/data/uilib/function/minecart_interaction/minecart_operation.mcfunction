#remove_check
execute if score @p uilib.countdown matches 0 run function uilib:minecart_interaction/moved
execute if score @p uilib.countdown matches 0.. run scoreboard players remove @p uilib.countdown 1

#detect when a player is no longer using the interaction interface
execute if entity @p[tag=interacting] unless entity @s[distance=..0.1] run function uilib:minecart_interaction/moved


#main
execute if entity @p[tag=interacting] on passengers if entity @s[type=chest_minecart] run function uilib:ui_internal/main

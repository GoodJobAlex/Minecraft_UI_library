#revoke advancement
advancement revoke @s only uilib:interacted

#cancel motion, stop timer and to everything to the correct location while initiating the guard
tp @s @s
scoreboard players set @s uilib.countdown -1
execute at @s as @e[tag=interaction] if score @s uilib.id = @p uilib.id run function uilib:minecart_interaction/interacted_sub

tag @s add interacting

execute store result score @s uilib.rotation run data get entity @s Rotation[0] 10000


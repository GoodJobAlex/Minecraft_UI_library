#revoke advancement
advancement revoke @s only uilib:interacted
execute store result score @s uilib.x_rotation run data get entity @s Rotation[0] 1000000
scoreboard players set @s uilib.countdown -1
tag @s add interacting


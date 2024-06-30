execute on passengers run function uilib:minecart_interaction/init_interaction
tag @s add uilib.moving
execute as @p anchored eyes positioned ^ ^ ^0.5 run tp @n[tag=uilib.moving] ~ ~-0.2 ~
tag @s remove uilib.moving

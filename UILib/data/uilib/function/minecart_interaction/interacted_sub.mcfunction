tp @s ~ ~ ~
execute on passengers if entity @s[tag=interaction_block] run data merge entity @s {width:1.2f,height:0.8f}
execute on passengers if entity @s[tag=ui_interaction_entity] run tag @s add in_interaction

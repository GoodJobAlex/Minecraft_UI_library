#remove the guard and tp the minecart away
execute on passengers if entity @s[tag=interaction_block] run data merge entity @s {width:0f,height:0f}
tp @s 0 1500000 0
tag @p remove interacting

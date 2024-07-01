#remove the guard and tp the minecart away
execute on passengers if entity @s[tag=interaction_block] run function uilib:minecart_interaction/reset_interaction_block
tp @s 0 1500000 0
tag @p remove interacting
clear @p *[custom_data~{ui:item}]
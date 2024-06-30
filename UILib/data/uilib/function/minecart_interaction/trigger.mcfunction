advancement revoke @s only uilib:trigger
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{default_trigger:1b}] run return fail
data modify storage uilib:storage temporary_item set from entity @s SelectedItem
execute store result score @s uilib.page run data get entity @s SelectedItem.components."minecraft:custom_data".starting_page
enchant @s uilib:remove_tag 1
clear @s *[enchantments~[{levels:{"uilib:remove_tag":1}}]]
data modify entity 00000461-0000-0925-0000-1d390000091b Item set from storage uilib:storage temporary_item
item replace entity @s weapon.mainhand from entity 00000461-0000-0925-0000-1d390000091b container.0

tag @s remove interacting
execute at @s as @e[tag=interaction] if score @s uilib.id = @p uilib.id run function uilib:minecart_interaction/initialization
scoreboard players set @s uilib.countdown 5

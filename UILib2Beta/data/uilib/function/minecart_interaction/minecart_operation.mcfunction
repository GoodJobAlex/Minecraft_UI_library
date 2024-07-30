#main
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:custom_data":{interaction:key}}}},tag=!interacting] on passengers if entity @s[type=chest_minecart] run function uilib:minecart_interaction/init

execute positioned ~ ~1.5 ~ unless entity @s[distance=..0.25] run tag @p remove interacting

execute if entity @p[tag=interacting] on passengers if entity @s[type=chest_minecart] run function uilib:ui_internal/main

execute if entity @p[nbt={SelectedItem:{components:{"minecraft:custom_data":{interaction:key}}}}] run tp @s ~ ~1.5 ~


execute if entity @p[nbt=!{SelectedItem:{components:{"minecraft:custom_data":{interaction:key}}}}] run function uilib:minecart_interaction/quit

execute if entity @p[tag=interacting] store result score temp uilib.x_rotation run data get entity @p Rotation[0] 1000000
execute if entity @p[tag=interacting] unless score temp uilib.x_rotation = @p uilib.x_rotation run function uilib:minecart_interaction/quit
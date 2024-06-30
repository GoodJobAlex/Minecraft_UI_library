execute as @s[type=chest_minecart] run data merge entity @s {CustomDisplayTile:1b,DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"corner"}}}
execute as @s[type=hopper_minecart] run data merge entity @s {CustomDisplayTile:1b,DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"save"}}}
execute as @s[type=furnace_minecart] run data merge entity @s {CustomDisplayTile:1b,DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"load"}}}
execute as @s[type=tnt_minecart] run data merge entity @s {CustomDisplayTile:1b,DisplayState:{Name:"minecraft:structure_block",Properties:{mode:"data"}}}
execute as @s[type=minecart] run data merge entity @s {CustomDisplayTile:1b,DisplayState:{Name:"minecraft:jigsaw",Properties:{orientation:"north_up"}}}
tag @s add uilib.model_added

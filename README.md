# Minecraft_UI_library-Version 1.21
An UI library which allows you to easily customize an UI, but requires you to add the logics of the buttons and stuff. Potential drawbacks include: resourcepack required, completely disable custom display tile for minecarts. Another route you can take is to use chest boats, but will face complete removal of one of the chest boats from the game
# How to use
**add new pages:**   
summon any chest minecart, click into it, place all of the items you want in your page (With components) and run function uilib:api/new_page as the chest minecart. Note, you can name the item you are holding to give custom name to your page.   

**Access:**   
/give @p compass[custom_data={default_trigger:1b,interaction:key,starting_page:0},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:100000}] 1  
remember to put the item you are using for the key inside the trigger item tag file.

**BuiltInFunctions:**   
**functions uilib:api/new_page** -> execute as a minecart  
**functions uilib:api/switch_page** -> execute as the minecart and at the player    
**functions uilib:api/refresh** -> execute as the minecart and at the player    
**functions uilib:api/quit** -> execute as the minecart and at the player    
To execute at the player and as the minecart do -> **execute as player at @s as @e[type=item_display,tag=interaction] if score @s uilib.id = @p uilib.id on passengers if entity @s[type=chest_minecart] run ...**      
Main is already ran at the player and and as its chest minecart.

**How to add custom functions:**   
First, the functions is ran as the minecart and at the player, becuase the functions you add will be automatically ran in main.      
add a header named uilib in your datapack, then add an function tag called ui_logics in it, and add your own function in side the tag file.     
An example has been done for you which allows you to take item with custom tag ui_clear:0b out of the ui.      

If you don't understand this last part you can watch this video which covers the above: https://www.youtube.com/watch?v=qyFrP9m2r_s&t=571s

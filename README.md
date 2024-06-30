# Minecraft_UI_library
An UI library which allows you to easily customize an UI, but requires you to add the logics of the buttons and stuff. Potential drawbacks include: resourcepack required, completely disable custom display tile for minecarts. Another route you can take is to use chest boats, but will face complete removal of one of the chest boats from the game
# How to use
**add new pages:**   
summon any chest minecart, click into it, place all of the items you want in your page (With components) and run function uilib:ui_internal/new_page as the chest minecart. Note, you can name the item you are holding to give custom name to your page.   

**Access:**   
/give @p compass[custom_data={default_trigger:1b,interaction:key,starting_page:0},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:100000}] 1  
remember to put the item you are using for the key inside the trigger item tag.

**BuiltInFunctions:**   
the starting_slide custom_tag decides which page you are in when you access the ui through that item.   
use these two to change slide-> scoreboard players set @p uilib.page ? + function uilib:ui_internal/switch_page   
also you can run function uilib:minecart_interaction/moved to quit

**How to add custom functions:**   
First Note that the functions is ran as the minecart and at the player.      
add a header named uilib in your datapack, then add an function tag called ui_logics in it, and add your own function in side the tag file.     
An example has been done for you which allows you to take item with custom tag ui_clear:0b out of the ui.      

If you don't understand this last part you can watch this video which covers the above: https://www.youtube.com/watch?v=qyFrP9m2r_s&t=571s

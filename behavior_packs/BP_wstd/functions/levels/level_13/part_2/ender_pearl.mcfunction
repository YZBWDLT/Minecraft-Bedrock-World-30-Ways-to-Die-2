# 扔出末影珍珠后

clear @a minecraft:ender_pearl
give @a[hasitem={item=ender_pearl,quantity=0}] minecraft:ender_pearl 1
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_13.ender_pearl_used"}]}
kill @e[type=ender_pearl]
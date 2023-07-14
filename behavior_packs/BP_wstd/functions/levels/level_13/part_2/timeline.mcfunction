# 时间线

## 让玩家无法扔出末影珍珠，跌进虚空后传送回去
execute @e[type=ender_pearl] ~~~ give @a[hasitem={item=ender_pearl,quantity=0}] ender_pearl
execute @e[type=ender_pearl] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level.level_13.ender_pearl_used"}]}
execute @e[type=ender_pearl] ~~~ kill @e[type=ender_pearl]
execute @a ~~~ execute @s[x=~,y=-1,z=~,dx=0,dy=-50,dz=0] ~~~ tellraw @s {"rawtext":[{"translate":"chat.level.level_13.void"}]}
execute @a ~~~ execute @s[x=~,y=-1,z=~,dx=0,dy=-50,dz=0] ~~~ give @a[hasitem={item=ender_pearl,quantity=0}] ender_pearl 1 0
execute @a ~~~ execute @s[x=~,y=-1,z=~,dx=0,dy=-50,dz=0] ~~~ effect @s instant_health 1 10 true
execute @a ~~~ execute @s[x=~,y=-1,z=~,dx=0,dy=-50,dz=0] ~~~ tp @s -20 22 63 facing -26 22 57

# 检测物品 | 1秒1次
execute @e[name=ticker,scores={time=0}] ~~~ execute @e[name=itemTester1,scores={active=2}] ~~~ execute @a[hasitem={item=repeater}] ~~~ scoreboard players set @e[name=itemTester1] active 1
execute @e[name=itemTester1,scores={active=1}] ~~~ clear @a repeater
execute @e[name=itemTester1,scores={active=1}] ~~~ give @p repeater 1 0 {"can_place_on":{"blocks":["gold_block"]}}
execute @e[name=itemTester1,scores={active=1}] ~~~ tellraw @p {"rawtext":[{"translate":"chat.item_tester.placeable_block","with":{"rawtext":[{"translate":"item.repeater.name"}]}}]}
execute @e[name=itemTester1,scores={active=1}] ~~~ scoreboard players set @e[name=itemTester1] active 0

# 检测灯是否亮起，亮起后替换岩浆块为岩浆
execute @a ~~~ detect -28 26 58 lit_redstone_lamp -1 execute @a ~~~ detect -23 31 60 magma -1 playsound random.glass @s
execute @a ~~~ detect -28 26 58 lit_redstone_lamp -1 execute @a ~~~ detect -23 31 60 magma -1 setblock -23 31 60 flowing_lava

# 检测物品
execute @e[name=ticker,scores={time=0}] ~~~ execute @e[name=itemTester1,scores={active=2}] ~~~ execute @a[hasitem={item=bed}] ~~~ scoreboard players set @e[name=itemTester1] active 1
execute @e[name=itemTester1,scores={active=1}] ~~~ clear @a bed
execute @e[name=itemTester1,scores={active=1}] ~~~ give @p bed 1 0 {"can_place_on":{"blocks":["quartz_block","quartz_stairs","glass","stained_glass","emerald_block"]}}
execute @e[name=itemTester1,scores={active=1}] ~~~ tellraw @p {"rawtext":[{"translate":"chat.placeable_block","with":{"rawtext":[{"translate":"tile.bed.name"}]}}]}
execute @e[name=itemTester1,scores={active=1}] ~~~ scoreboard players set @e[name=itemTester1] active 0

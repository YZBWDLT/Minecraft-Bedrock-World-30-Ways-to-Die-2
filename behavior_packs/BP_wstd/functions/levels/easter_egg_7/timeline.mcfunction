# 检测物品
execute @e[name=ticker,scores={time=0}] ~~~ execute @e[name=itemTester1,scores={active=2}] ~~~ execute @a[hasitem={item=lever}] ~~~ scoreboard players set @e[name=itemTester1] active 1
execute @e[name=itemTester1,scores={active=1}] ~~~ clear @a lever
execute @e[name=itemTester1,scores={active=1}] ~~~ give @a lever 1 0 {"can_place_on":{"blocks":["concrete"]}}
execute @e[name=itemTester1,scores={active=1}] ~~~ tellraw @p {"rawtext":[{"translate":"chat.item_tester.placeable_block","with":{"rawtext":[{"translate":"tile.lever.name"}]}}]}
execute @e[name=itemTester1,scores={active=1}] ~~~ scoreboard players set @e[name=itemTester1] active 0
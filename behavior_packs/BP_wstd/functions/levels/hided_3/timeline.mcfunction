# 每1秒循环一次
execute @e[name=timeline,scores={time=20}] ~~~ scoreboard players set @s time 0

# 检测物品
## 可放置方块
execute @e[name=timeline,scores={time=19}] ~~~ execute @e[name=itemTester1,scores={active=2}] ~~~ execute @a[hasitem={item=crafting_table}] ~~~ scoreboard players set @e[name=itemTester1] active 1
execute @e[name=itemTester1,scores={active=1}] ~~~ clear @a crafting_table
execute @e[name=itemTester1,scores={active=1}] ~~~ give @p crafting_table 1 0 {"can_place_on":{"blocks":["gold_block"]}}
execute @e[name=itemTester1,scores={active=1}] ~~~ tellraw @p {"rawtext":[{"translate":"chat.item_tester.placeable_block","with":{"rawtext":[{"translate":"tile.crafting_table.name"}]}}]}
execute @e[name=itemTester1,scores={active=1}] ~~~ scoreboard players set @e[name=itemTester1] active 0

execute @e[name=timeline,scores={time=19}] ~~~ execute @e[name=itemTester2,scores={active=2}] ~~~ execute @a[hasitem={item=furnace}] ~~~ scoreboard players set @e[name=itemTester2] active 1
execute @e[name=itemTester2,scores={active=1}] ~~~ clear @a furnace
execute @e[name=itemTester2,scores={active=1}] ~~~ give @p furnace 1 0 {"can_place_on":{"blocks":["gold_block"]}}
execute @e[name=itemTester2,scores={active=1}] ~~~ tellraw @p {"rawtext":[{"translate":"chat.item_tester.placeable_block","with":{"rawtext":[{"translate":"tile.furnace.name"}]}}]}
execute @e[name=itemTester2,scores={active=1}] ~~~ scoreboard players set @e[name=itemTester2] active 0

execute @e[name=timeline,scores={time=19}] ~~~ execute @e[name=itemTester3,scores={active=2}] ~~~ execute @a[hasitem={item=brewing_stand}] ~~~ scoreboard players set @e[name=itemTester3] active 1
execute @e[name=itemTester3,scores={active=1}] ~~~ clear @a brewing_stand
execute @e[name=itemTester3,scores={active=1}] ~~~ give @p brewing_stand 1 0 {"can_place_on":{"blocks":["gold_block"]}}
execute @e[name=itemTester3,scores={active=1}] ~~~ tellraw @p {"rawtext":[{"translate":"chat.item_tester.placeable_block","with":{"rawtext":[{"translate":"item.brewing_stand.name"}]}}]}
execute @e[name=itemTester3,scores={active=1}] ~~~ scoreboard players set @e[name=itemTester3] active 0

## 可破坏方块
execute @e[name=timeline,scores={time=19}] ~~~ execute @e[name=itemTester4,scores={active=2}] ~~~ execute @a[hasitem={item=stone_pickaxe}] ~~~ scoreboard players set @e[name=itemTester4] active 1
execute @e[name=itemTester4,scores={active=1}] ~~~ clear @a stone_pickaxe
execute @e[name=itemTester4,scores={active=1}] ~~~ give @p stone_pickaxe 1 0 {"can_destroy":{"blocks":["stone","coal_ore","glass_pane","glowstone"]}}
execute @e[name=itemTester4,scores={active=1}] ~~~ tellraw @p {"rawtext":[{"translate":"chat.item_tester.destroyable_tool","with":{"rawtext":[{"translate":"item.stone_pickaxe.name"}]}}]}
execute @e[name=itemTester4,scores={active=1}] ~~~ scoreboard players set @e[name=itemTester4] active 0

execute @e[name=timeline,scores={time=19}] ~~~ execute @e[name=itemTester5,scores={active=2}] ~~~ execute @a[hasitem={item=wooden_pickaxe}] ~~~ scoreboard players set @e[name=itemTester5] active 1
execute @e[name=itemTester5,scores={active=1}] ~~~ clear @a wooden_pickaxe
execute @e[name=itemTester5,scores={active=1}] ~~~ give @p wooden_pickaxe 1 0 {"can_destroy":{"blocks":["stone"]}}
execute @e[name=itemTester5,scores={active=1}] ~~~ tellraw @p {"rawtext":[{"translate":"chat.item_tester.destroyable_tool","with":{"rawtext":[{"translate":"item.wooden_pickaxe.name"}]}}]}
execute @e[name=itemTester5,scores={active=1}] ~~~ scoreboard players set @e[name=itemTester5] active 0

# 炼药锅
execute @a[c=1] ~~~ detect -89 22 107 cauldron 6 give @s spider_eye
execute @a[c=1] ~~~ detect -89 22 107 cauldron 6 tellraw @a {"rawtext":[{"translate":"chat.level.hided_3.gift"}]}
execute @a[c=1] ~~~ detect -89 22 107 cauldron 6 setblock -89 22 107 cauldron ["cauldron_liquid":"water","fill_level":0]
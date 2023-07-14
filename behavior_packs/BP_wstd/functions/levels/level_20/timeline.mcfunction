# 检测物品
execute @e[name=ticker,scores={time=0}] ~~~ execute @e[name=itemTester1,scores={active=2}] ~~~ execute @a[hasitem={item=crafting_table}] ~~~ scoreboard players set @e[name=itemTester1] active 1
execute @e[name=itemTester1,scores={active=1}] ~~~ clear @a crafting_table
execute @e[name=itemTester1,scores={active=1}] ~~~ give @p crafting_table 1 0 {"can_place_on":{"blocks":["emerald_block","quartz_block","glass","stained_glass","quartz_stairs","obsidian","grass","dirt","soul_sand","soul_soil","stone","tallgrass","netherrack"]}}
execute @e[name=itemTester1,scores={active=1}] ~~~ tellraw @p {"rawtext":[{"translate":"chat.placeable_block","with":{"rawtext":[{"translate":"tile.crafting_table.name"}]}}]}
execute @e[name=itemTester1,scores={active=1}] ~~~ scoreboard players set @e[name=itemTester1] active 0

execute @e[name=ticker,scores={time=0}] ~~~ execute @e[name=itemTester2,scores={active=2}] ~~~ execute @a[hasitem={item=brewing_stand}] ~~~ scoreboard players set @e[name=itemTester2] active 1
execute @e[name=itemTester2,scores={active=1}] ~~~ clear @a brewing_stand
execute @e[name=itemTester2,scores={active=1}] ~~~ give @p brewing_stand 1 0 {"can_place_on":{"blocks":["emerald_block","quartz_block","glass","stained_glass","quartz_stairs","obsidian","grass","dirt","soul_sand","soul_soil","stone","tallgrass","netherrack"]}}
execute @e[name=itemTester2,scores={active=1}] ~~~ tellraw @p {"rawtext":[{"translate":"chat.placeable_block","with":{"rawtext":[{"translate":"item.brewing_stand.name"}]}}]}
execute @e[name=itemTester2,scores={active=1}] ~~~ scoreboard players set @e[name=itemTester2] active 0

execute @e[name=ticker,scores={time=0}] ~~~ execute @e[name=itemTester3,scores={active=2}] ~~~ execute @a[hasitem={item=water_bucket}] ~~~ scoreboard players set @e[name=itemTester3] active 1
execute @e[name=itemTester3,scores={active=1}] ~~~ clear @a water_bucket
execute @e[name=itemTester3,scores={active=1}] ~~~ give @a water_bucket 1 0 {"can_destroy":{"blocks":["stained_glass_pane"]}}
execute @e[name=itemTester3,scores={active=1}] ~~~ tellraw @p {"rawtext":[{"translate":"chat.destroyable_tool","with":{"rawtext":[{"translate":"item.bucketWater.name"}]}}]}
execute @e[name=itemTester3,scores={active=1}] ~~~ scoreboard players set @e[name=itemTester3] active 0

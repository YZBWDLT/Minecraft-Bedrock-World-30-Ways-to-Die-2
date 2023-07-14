# 检测物品
execute @e[name=ticker,scores={time=0}] ~~~ execute @e[name=itemTester1,scores={active=2}] ~~~ execute @a[hasitem={item=iron_pickaxe}] ~~~ scoreboard players set @e[name=itemTester1] active 1
execute @e[name=itemTester1,scores={active=1}] ~~~ clear @a iron_pickaxe
execute @e[name=itemTester1,scores={active=1}] ~~~ give @a iron_pickaxe 1 0 {"can_destroy":{"blocks":["raw_iron_block","deepslate_iron_ore","deepslate_diamond_ore"]}}
execute @e[name=itemTester1,scores={active=1}] ~~~ tellraw @p {"rawtext":[{"translate":"chat.destroyable_tool","with":{"rawtext":[{"translate":"item.iron_pickaxe.name"}]}}]}
execute @e[name=itemTester1,scores={active=1}] ~~~ scoreboard players set @e[name=itemTester1] active 0

execute @e[name=ticker,scores={time=0}] ~~~ execute @e[name=itemTester2,scores={active=2}] ~~~ execute @a[hasitem={item=diamond_pickaxe}] ~~~ scoreboard players set @e[name=itemTester2] active 1
execute @e[name=itemTester2,scores={active=1}] ~~~ clear @a diamond_pickaxe
execute @e[name=itemTester2,scores={active=1}] ~~~ give @a diamond_pickaxe 1 0 {"can_destroy":{"blocks":["raw_iron_block","deepslate_iron_ore","deepslate_diamond_ore","obsidian"]}}
execute @e[name=itemTester2,scores={active=1}] ~~~ tellraw @p {"rawtext":[{"translate":"chat.destroyable_tool","with":{"rawtext":[{"translate":"item.diamond_pickaxe.name"}]}}]}
execute @e[name=itemTester2,scores={active=1}] ~~~ scoreboard players set @e[name=itemTester2] active 0
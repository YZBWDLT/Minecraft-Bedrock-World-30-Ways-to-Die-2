# ===== 物品检测 =====

# --- 当玩家获得物品后，给予其新的可用物品 ---

## 清除物品
## (设置要清除的物品，举例：clear @s crafting_table

## 给予可用的物品
## (设置要给予的物品，举例：give @s crafting_table 1 0 {"can_place_on":{"blocks":["quartz_block","quartz_stairs","glass","stained_glass","emerald_block"]}}

## 提示该玩家此物品可用
## (文本提示该玩家可用的物品，举例：tellraw @s {"rawtext":[{"translate":"chat.item_tester.placeable_block","with":{"rawtext":[{"translate":"tile.crafting_table.name"}]}}]}
## (文本提示该玩家可用的物品，举例：function lib/modify_states/sound/random_pop

## 停止该物品的检测
## (设置要停止检测的物品，举例：scoreboard players set easterEgg1.itemTestCraftingTable active 0

# ===== 物品检测 =====

# --- 当玩家获得物品后，给予其新的可用物品 ---

## 清除物品
clear @s brewing_stand

## 给予可用的物品
give @s brewing_stand 1 0 {"can_place_on":{"blocks":["emerald_block","quartz_block","glass","stained_glass","quartz_stairs","obsidian","grass","dirt","soul_sand","soul_soil","stone","tallgrass","netherrack"]}}

## 提示该玩家此物品可用
tellraw @s {"rawtext":[{"translate":"chat.item_tester.placeable_block","with":{"rawtext":[{"translate":"item.brewing_stand.name"}]}}]}
function lib/modify_states/sound/random_pop

## 停止该物品的检测
scoreboard players set level20.itemTestBrewingStand active 0
# ===== 物品检测 =====

# --- 当玩家获得物品后，给予其新的可用物品 ---

## 清除物品
clear @s bed 7

## 给予可用的物品
give @s bed 1 7 {"can_place_on":{"blocks":["quartz_block","quartz_stairs","glass","stained_glass","emerald_block"]}}

## 提示该玩家此物品可用
tellraw @s {"rawtext":[{"translate":"chat.item_tester.placeable_block","with":{"rawtext":[{"translate":"tile.bed.name"}]}}]}
function lib/modify_states/sound/random_pop

## 停止该物品的检测
scoreboard players set level10.itemTestBlackBed active 0
scoreboard players set level10.itemTestBrownBed active 0
scoreboard players set level10.itemTestGrayBed active 0
scoreboard players set level10.itemTestLightGrayBed active 0
scoreboard players set level10.itemTestWhiteBed active 0

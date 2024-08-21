# ===== 物品检测 =====

# --- 当玩家获得物品后，给予其新的可用物品 ---

## 清除物品
clear @s lever

## 给予可用的物品
give @s lever 1 0 {"can_place_on":{"blocks":["redstone_lamp"]}}

## 提示该玩家此物品可用
tellraw @s {"rawtext":[{"translate":"chat.item_tester.placeable_block","with":{"rawtext":[{"translate":"tile.lever.name"}]}}]}
function lib/modify_states/sound/random_pop

## 停止该物品的检测
scoreboard players set easterEgg7.itemTestLever active 0


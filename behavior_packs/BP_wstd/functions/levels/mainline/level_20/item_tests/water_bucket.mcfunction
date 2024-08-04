# ===== 物品检测 =====

# --- 当玩家获得物品后，给予其新的可用物品 ---

## 清除物品
clear @s water_bucket

## 给予可用的物品
give @s water_bucket 1 0 {"can_destroy":{"blocks":["stained_glass_pane"]}}

## 提示该玩家此物品可用
tellraw @s {"rawtext":[{"translate":"chat.item_tester.destroyable_tool","with":{"rawtext":[{"translate":"item.bucketWater.name"}]}}]}
function lib/modify_states/sound/random_pop

## 停止该物品的检测
scoreboard players set level20.itemTestWaterBucket active 0

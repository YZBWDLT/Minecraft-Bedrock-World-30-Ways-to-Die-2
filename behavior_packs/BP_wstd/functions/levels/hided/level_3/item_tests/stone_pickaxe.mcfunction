# ===== 物品检测 =====

# --- 当玩家获得物品后，给予其新的可用物品 ---

## 清除物品
clear @s stone_pickaxe

## 给予可用的物品
give @s stone_pickaxe 1 0 {"can_destroy":{"blocks":["stone","coal_ore","glass_pane","glowstone"]}}

## 提示该玩家此物品可用
tellraw @s {"rawtext":[{"translate":"chat.item_tester.destroyable_tool","with":{"rawtext":[{"translate":"item.stone_pickaxe.name"}]}}]}
function lib/modify_states/sound/random_pop

## 停止该物品的检测
scoreboard players set hided3.itemTestStonePickaxe active 0

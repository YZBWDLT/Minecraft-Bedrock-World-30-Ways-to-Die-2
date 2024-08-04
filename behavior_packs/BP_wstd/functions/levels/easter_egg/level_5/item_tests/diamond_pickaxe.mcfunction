# ===== 物品检测 =====

# --- 当玩家获得物品后，给予其新的可用物品 ---

## 清除物品
clear @s diamond_pickaxe

## 给予可用的物品
give @s diamond_pickaxe 1 0 {"can_destroy":{"blocks":["raw_iron_block","deepslate_iron_ore","deepslate_diamond_ore","obsidian"]}}

## 提示该玩家此物品可用
tellraw @s {"rawtext":[{"translate":"chat.item_tester.destroyable_tool","with":{"rawtext":[{"translate":"item.diamond_pickaxe.name"}]}}]}
function lib/modify_states/sound/random_pop

## 停止该物品的检测
scoreboard players set easterEgg5.itemTestDiamondPickaxe active 0
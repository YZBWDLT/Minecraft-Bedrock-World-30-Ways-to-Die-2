# ===== 关卡完成 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable

## 通用函数
function lib/modify_data/level/complete

## 自定义死亡消息
execute as @a run tellraw @s {"rawtext":[{"translate":"chat.deathmessage.hided_3","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 下一关 ---

## 传送玩家到下一关
tp @a 27 10 27 facing 0 10 27

# --- 特殊内容 ---

## 停用物品检测
scoreboard players reset hided3.itemTestCraftingTable active
scoreboard players reset hided3.itemTestFurnace active
scoreboard players reset hided3.itemTestBrewingStand active
scoreboard players reset hided3.itemTestWoodenPickaxe active
scoreboard players reset hided3.itemTestStonePickaxe active

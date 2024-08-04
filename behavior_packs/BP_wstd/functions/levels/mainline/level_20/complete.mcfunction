# ===== 关卡完成 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable
function lib/modify_states/level_complete_delay/disable

## 解锁下一关 | 通用函数要求该部分必须在通用函数之前执行
execute if score progress.level record matches 19 run scoreboard players set progress.level record 20

## 通用函数
function lib/modify_data/level/complete

## 自定义死亡消息
execute as @a run tellraw @s {"rawtext":[{"translate":"chat.deathmessage.level_20","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 下一关 ---

## 传送玩家到下一关
tp @a -1 10 27 facing -1 10 24

# --- 特殊内容 ---

## 停用物品检测
scoreboard players reset level20.itemTestCraftingTable active
scoreboard players reset level20.itemTestBrewingStand active
scoreboard players reset level20.itemTestWaterBucket active

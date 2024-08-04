# ===== 关卡完成 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable

## 解锁下一关 | 通用函数要求该部分必须在通用函数之前执行
execute if score progress.easterEgg record matches 4 run scoreboard players set progress.easterEgg record 5

## 通用函数
function lib/modify_data/level/complete

## 自定义死亡消息
execute as @a run tellraw @s {"rawtext":[{"translate":"chat.deathmessage.easter_egg_5","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 下一关 ---

## 传送玩家到下一关
tp @a -22 10 5 facing -22 10 2

# --- 特殊内容 ---

## 停用物品检测
scoreboard players reset easterEgg5.itemTestDiamondPickaxe active
scoreboard players reset easterEgg5.itemTestIronPickaxe active

# ===== 关卡完成 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable

## 解锁下一关 | 通用函数要求该部分必须在通用函数之前执行
execute if score progress.easterEgg record matches 5 run scoreboard players set progress.easterEgg record 6

## 通用函数
function lib/modify_data/level/complete

## 自定义死亡消息
execute as @a run tellraw @s {"rawtext":[{"translate":"chat.deathmessage.easter_egg_6","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 下一关 ---

## 传送玩家到下一关
tp @a -26 10 5 facing -26 10 2

# --- 特殊内容 ---

## 停用特殊分值
scoreboard players reset easterEgg6.playerInLava data

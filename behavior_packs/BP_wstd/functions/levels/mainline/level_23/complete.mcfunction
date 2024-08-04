# ===== 关卡完成 =====

# --- 基本 ---

## 解锁下一关 | 通用函数要求该部分必须在通用函数之前执行
execute if score progress.level record matches 22 run scoreboard players set progress.level record 23

## 通用函数
function lib/modify_data/level/complete

## 自定义死亡消息
execute as @a run tellraw @s {"rawtext":[{"translate":"chat.deathmessage.level_23","with":{"rawtext":[{"selector":"@s"}]}}]}
tellraw @a {"rawtext":[{"translate":"chat.level.level_23.end"}]}

# --- 下一关 ---

## 传送玩家到下一关
tp @a -13 10 27 facing -13 10 24

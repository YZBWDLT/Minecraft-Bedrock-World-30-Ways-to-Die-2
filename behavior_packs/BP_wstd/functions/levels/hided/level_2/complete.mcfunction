# ===== 关卡完成 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable

## 解锁下一关 | 通用函数要求该部分必须在通用函数之前执行
execute if score progress.level record matches 21 run tellraw @a {"rawtext":[{"translate":"functions.levels.hided.level_2.complete.let_level_22_completed"}]}
execute if score progress.level record matches 21 run scoreboard players set progress.level record 22

## 通用函数
function lib/modify_data/level/complete

## 自定义死亡消息
execute as @a run tellraw @s {"rawtext":[{"translate":"chat.deathmessage.hided_2","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 下一关 ---

## 传送玩家到下一关
tp @a -9 10 27 180 0

# --- 特殊内容 ---

## 停用特殊分值
scoreboard players reset hided2.endBlockBroken data

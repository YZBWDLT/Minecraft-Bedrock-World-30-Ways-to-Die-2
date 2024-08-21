# ===== 关卡完成 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable
function lib/modify_states/level_complete_delay/disable

## 自定义死亡消息 | 通用函数要求：需将带有data.skipUsed的命令提前于通用函数执行
execute if score skipUsed data matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.deathmessage.level_13","with":{"rawtext":[{"selector":"@s"}]}}]}
execute if score skipUsed data matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.deathmessage.level_13.skip_used","with":{"rawtext":[{"selector":"@s"}]}}]}

## 解锁下一关 | 通用函数要求该部分必须在通用函数之前执行
execute if score progress.level record matches 31 run scoreboard players set progress.level record 32

## 通用函数
function lib/modify_data/level/complete

# --- 下一关 ---

## 传送玩家到下一关
tp @a -33 10 27 facing -33 10 30

# --- 特殊内容 ---

## 停用特殊分值
scoreboard players reset level13.redstoneActivatedTimes data

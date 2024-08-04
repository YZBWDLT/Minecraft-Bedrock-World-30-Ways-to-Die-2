# ===== 关卡完成 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable

## 解锁下一关 | 通用函数要求该部分必须在通用函数之前执行
execute if score progress.level record matches 23 run scoreboard players set progress.level record 24

## 通用函数
function lib/modify_data/level/complete

## 自定义死亡消息
execute as @a run tellraw @s {"rawtext":[{"translate":"chat.deathmessage.level_24","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 下一关 ---

## 传送玩家到下一关
tp @a -17 10 27 facing -17 10 24

# --- 特殊内容 ---

## 改回困难难度
difficulty hard
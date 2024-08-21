# ===== 关卡完成 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable

## 解锁下一关 | 通用函数要求该部分必须在通用函数之前执行
execute if score progress.level record matches 17 run scoreboard players set progress.level record 18

## 通用函数
function lib/modify_data/level/complete

## 自定义死亡消息
execute if score level18.playerFellIntoVoid data matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.deathmessage.level_18.blow_up","with":{"rawtext":[{"selector":"@s"}]}}]}
execute if score level18.playerFellIntoVoid data matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.deathmessage.level_18.void","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 下一关 ---

## 传送玩家到下一关
tp @a 7 10 27 facing 7 10 24

# --- 特殊内容 ---

## 停用特殊分值
scoreboard players reset level18.playerFellIntoVoid data

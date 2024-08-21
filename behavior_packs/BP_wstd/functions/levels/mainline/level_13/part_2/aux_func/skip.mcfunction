# ===== 使用跳过 =====

# --- 跳过 ---
kill @s

# --- 进行跳过记录与提醒 ---
# 跳过记录的条件：
# 1. 玩家进度（record.progress.level）仍为上一个关卡的值
# 2. 本关未使用过跳过（record.skip.levelx=0）

## 音效与文本提示
execute if score progress.level record matches 13 if score skip.level13Part2 record matches 0 run tellraw @s {"rawtext":[{"translate":"functions.general.used_skip"}]}
execute if score progress.level record matches 13 if score skip.level13Part2 record matches 0 run function lib/modify_states/sound/random_anvil_land

## 记录所有跳过使用数目
execute if score progress.level record matches 13 if score skip.level13Part2 record matches 0 run scoreboard players add skipUsed record 1

## 标记本关使用过跳过
execute if score progress.level record matches 13 if score skip.level13Part2 record matches 0 run scoreboard players set skipUsed data 1

## 重置记分板
execute if score progress.level record matches 13 if score skip.level13Part2 record matches 0 run function lib/scoreboard/skip

## 记录本关使用过跳过
execute if score progress.level record matches 13 if score skip.level13Part2 record matches 0 run scoreboard players set skip.level13Part2 record 1

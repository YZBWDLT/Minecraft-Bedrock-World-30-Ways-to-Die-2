# ===== 使用跳过 =====

# --- 跳过 ---
## (设置跳过的内容，举例：kill @s

# --- 进行跳过记录与提醒 ---
# 跳过记录的条件：
# 1. 玩家进度（record.progress.level）仍为上一个关卡的值
# 2. 本关未使用过跳过（record.skip.levelx=0）

## 音效与文本提示
## (文本提示本次跳过的使用将被记录，举例：execute if score progress.level record matches 19 if score skip.level20 record matches 0 run tellraw @s {"rawtext":[{"translate":"functions.general.used_skip"}]}
## (音效提示本次跳过的使用将被记录，举例：execute if score progress.level record matches 19 if score skip.level20 record matches 0 run function lib/modify_states/sound/random_anvil_land

## 记录所有跳过使用数目
## (设置所有跳过的使用数目+1，举例：execute if score progress.level record matches 19 if score skip.level20 record matches 0 run scoreboard players add skipUsed record 1

## 标记本关使用过跳过
## (标记当前关卡使用过跳过，举例：scoreboard players set skipUsed data 1

## 重置记分板
## (重新刷新记分板，举例：execute if score progress.level record matches 19 if score skip.level20 record matches 0 run function lib/scoreboard/skip

## 记录本关使用过跳过
## (记录本关使用过跳过，举例：execute if score progress.level record matches 19 if score skip.level20 record matches 0 run scoreboard players set skip.level20 record 1

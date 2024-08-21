# ===== 使用提示 =====

# --- 提示 ---
## (设置提示的内容，举例：execute as @a run tellraw @s {"rawtext":[{"translate":"chat.hint.level_7"}]}

# --- 进行提示记录与提醒 ---
# 提示记录的条件：
# 1. 玩家进度（record.progress.level）仍为上一个关卡的值
# 2. 本关未使用过提示（record.hint.levelx=0）

## 音效与文本提示
## (文本提示本次提示的使用将被记录，举例：execute if score progress.level record matches 6 if score hint.level7 record matches 0 run tellraw @s {"rawtext":[{"translate":"functions.general.used_hint"}]}
## (音效提示本次提示的使用将被记录，举例：execute if score progress.level record matches 6 if score hint.level7 record matches 0 run function lib/modify_states/sound/random_anvil_land

## 记录所有提示使用数目
## (设置所有提示的使用数目+1，举例：execute if score progress.level record matches 6 if score hint.level7 record matches 0 run scoreboard players add hintUsed record 1

## 标记本关使用过提示
## (标记当前关卡使用过提示，举例：execute if score progress.level record matches 6 if score hint.level7 record matches 0 run scoreboard players set hintUsed data 1

## 重置记分板
## (重新刷新记分板，举例：execute if score progress.level record matches 6 if score hint.level7 record matches 0 run function lib/scoreboard/hint

## 记录本关使用过提示
## (记录本关使用过提示，举例：execute if score progress.level record matches 6 if score hint.level7 record matches 0 run scoreboard players set hint.level7 record 1

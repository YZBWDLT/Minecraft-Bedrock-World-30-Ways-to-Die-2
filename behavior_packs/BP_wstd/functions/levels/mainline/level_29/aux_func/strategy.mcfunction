# ===== 使用攻略 =====

# --- 攻略 ---
execute as @a run tellraw @s {"rawtext":[{"translate":"chat.strategy.level_29"}]}

# --- 进行攻略记录与提醒 ---
# 攻略记录的条件：
# 1. 玩家进度（record.progress.level）仍为上一个关卡的值
# 2. 本关未使用过攻略（record.strategy.levelx=0）

## 音效与文本提示
execute if score progress.level record matches 28 if score strategy.level29 record matches 0 run tellraw @s {"rawtext":[{"translate":"functions.general.used_strategy"}]}
execute if score progress.level record matches 28 if score strategy.level29 record matches 0 run function lib/modify_states/sound/random_anvil_land

## 记录所有攻略使用数目
execute if score progress.level record matches 28 if score strategy.level29 record matches 0 run scoreboard players add strategyUsed record 1

## 标记本关使用过攻略
scoreboard players set strategyUsed data 1

## 重置记分板
execute if score progress.level record matches 28 if score strategy.level29 record matches 0 run function lib/scoreboard/strategy

## 记录本关使用过攻略
execute if score progress.level record matches 28 if score strategy.level29 record matches 0 run scoreboard players set strategy.level29 record 1

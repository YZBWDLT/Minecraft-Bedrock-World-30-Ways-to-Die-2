# ===== 普通难度 =====

# --- 速通模式 ---
# 阻止其运行

execute if score speedrunMode settings matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.error.change_difficulty.in_speedrun_mode"}]}

# --- 非速通模式 ---

## 设置提示、攻略与跳过启用状态
execute if score speedrunMode settings matches 0 run scoreboard players set hintEnabled settings 0
execute if score speedrunMode settings matches 0 run scoreboard players set strategyEnabled settings 0
execute if score speedrunMode settings matches 0 run scoreboard players set skipEnabled settings 1

## 音效
execute if score speedrunMode settings matches 0 run function lib/modify_states/sound/random_pop

## 记分板重置
execute if score speedrunMode settings matches 0 run function lib/scoreboard/difficulty

## 提示
execute if score speedrunMode settings matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.difficulty.normal"}]}

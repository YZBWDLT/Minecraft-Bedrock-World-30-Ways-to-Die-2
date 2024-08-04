# ===== 自定义提示 =====

# --- 速通模式 ---
# 阻止其运行

execute if score speedrunMode settings matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.error.change_difficulty.in_speedrun_mode"}]}

# --- 非速通模式 ---

## 设置提示启用状态
execute if score speedrunMode settings matches 0 run scoreboard players add hintEnabled settings 1
execute if score speedrunMode settings matches 0 if score hintEnabled settings matches !0..1 run scoreboard players set hintEnabled settings 0

## 音效
execute if score speedrunMode settings matches 0 run function lib/modify_states/sound/random_pop

## 记分板重置
execute if score speedrunMode settings matches 0 run function lib/scoreboard/difficulty

## 提示 | 分别为未启用和启用状态
execute if score speedrunMode settings matches 0 if score hintEnabled settings matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.difficulty.hint.disabled"}]}
execute if score speedrunMode settings matches 0 if score hintEnabled settings matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.difficulty.hint.enabled"}]}

## 检测调整后是否为预设难度
execute if score speedrunMode settings matches 0 run function lib/modify_data/difficulty_presets

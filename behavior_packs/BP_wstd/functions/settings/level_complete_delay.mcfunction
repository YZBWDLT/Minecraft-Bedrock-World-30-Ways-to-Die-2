# ===== 关卡完成延迟 =====

# --- 设置状态 ---
# 0-禁用；1-部分0.25秒；2-部分0.50秒；3-部分0.75秒；4-部分1.00秒；5-部分1.25秒；6-全部0.25秒；7-全部0.50秒；8-全部0.75秒；9-全部1.00秒；10-全部1.25秒
scoreboard players add levelCompleteDelay settings 1
execute if score levelCompleteDelay settings matches !0..10 run scoreboard players set levelCompleteDelay settings 0

# --- 提示 ---

## 聊天栏
execute if score levelCompleteDelay settings matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.level_complete_delay.none"}]}
execute if score levelCompleteDelay settings matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.level_complete_delay.specific_levels.5ticks"}]}
execute if score levelCompleteDelay settings matches 2 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.level_complete_delay.specific_levels.10ticks"}]}
execute if score levelCompleteDelay settings matches 3 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.level_complete_delay.specific_levels.15ticks"}]}
execute if score levelCompleteDelay settings matches 4 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.level_complete_delay.specific_levels.20ticks"}]}
execute if score levelCompleteDelay settings matches 5 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.level_complete_delay.specific_levels.25ticks"}]}
execute if score levelCompleteDelay settings matches 6 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.level_complete_delay.all_levels.5ticks"}]}
execute if score levelCompleteDelay settings matches 7 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.level_complete_delay.all_levels.10ticks"}]}
execute if score levelCompleteDelay settings matches 8 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.level_complete_delay.all_levels.15ticks"}]}
execute if score levelCompleteDelay settings matches 9 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.level_complete_delay.all_levels.20ticks"}]}
execute if score levelCompleteDelay settings matches 10 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.level_complete_delay.all_levels.25ticks"}]}

## 音效
function lib/modify_states/sound/random_orb_1

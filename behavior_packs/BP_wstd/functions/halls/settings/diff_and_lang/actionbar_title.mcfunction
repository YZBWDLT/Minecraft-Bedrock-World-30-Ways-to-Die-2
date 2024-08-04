# ===== 快捷栏标题 =====

# --- 非速通模式 ---
execute if score speedrunMode settings matches 0 as @a run titleraw @s actionbar {"rawtext":[{"translate":"actionbar.setting_center.difficulty_and_language"}]}

# --- 速通模式 ---
execute if score speedrunMode settings matches 1 as @a run titleraw @s actionbar {"rawtext":[{"translate":"actionbar.setting_center.difficulty_and_language"},{"text":" | "},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}}]}

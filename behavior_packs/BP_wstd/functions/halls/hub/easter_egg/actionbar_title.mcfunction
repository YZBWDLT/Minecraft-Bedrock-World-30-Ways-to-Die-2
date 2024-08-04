# ===== 快捷栏标题 =====

# --- 非速通模式 ---
execute if score speedrunMode settings matches 0 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s","with":{"rawtext":[{"translate":"title.easter_egg_hall"},{"translate":"subtitle.easter_egg_hall"}]}}]}

# --- 速通模式 ---
execute if score speedrunMode settings matches 1 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s","with":{"rawtext":[{"translate":"title.easter_egg_hall"},{"translate":"subtitle.easter_egg_hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}}]}}]}

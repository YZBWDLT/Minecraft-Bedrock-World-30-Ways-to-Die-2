# ===== 快捷栏标题 =====

# --- 非速通模式 ---
execute if score speedrunMode settings matches 0 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s %%s | §7%%s\n%%s","with":{"rawtext":[{"translate":"title.easter_egg_8"},{"translate":"subtitle.easter_egg_8"},{"translate":"actionbar.description.easter_egg_8"},{"translate":"actionbar.remaining_time","with":{"rawtext":[{"score":{"objective":"time","name":"remainingTime"}}]}}]}}]}

# --- 速通模式 ---
execute if score speedrunMode settings matches 1 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.easter_egg_8"},{"translate":"subtitle.easter_egg_8"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.remaining_time","with":{"rawtext":[{"score":{"objective":"time","name":"remainingTime"}}]}}]}}]}
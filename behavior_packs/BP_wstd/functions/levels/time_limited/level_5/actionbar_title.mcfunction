# ===== 快捷栏标题 =====

# --- 未开始游戏时 ---
execute if score timeline active matches 6 run titleraw @a actionbar {"rawtext":[{"translate":"actionbar.use_next_to_start"}]}

# --- 开始游戏时 - 非速通模式 ---
execute if score timeline active matches 1 if score speedrunMode settings matches 0 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s %%s | §7%%s\n%%s","with":{"rawtext":[{"translate":"title.time_limited_5"},{"translate":"subtitle.time_limited_5"},{"translate":"actionbar.description.time_limited_5"},{"translate":"actionbar.remaining_time","with":{"rawtext":[{"score":{"objective":"time","name":"remainingTime"}}]}}]}}]}

# --- 开始游戏时 - 速通模式 ---
execute if score timeline active matches 1 if score speedrunMode settings matches 1 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.time_limited_5"},{"translate":"subtitle.time_limited_5"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.remaining_time","with":{"rawtext":[{"score":{"objective":"time","name":"remainingTime"}}]}}]}}]}

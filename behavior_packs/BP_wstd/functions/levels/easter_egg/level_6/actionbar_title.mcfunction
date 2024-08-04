# ===== 快捷栏标题 =====

# --- 非速通模式 ---
# (设置速通模式下显示的内容，举例：execute if score speedrunMode settings matches 0 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s %%s | §7%%s","with":{"rawtext":[{"translate":"title.easter_egg_7"},{"translate":"subtitle.easter_egg_7"},{"translate":"actionbar.description.easter_egg_7"}]}}]}

# --- 速通模式 ---
# (设置非速通模式下显示的内容，举例：execute if score speedrunMode settings matches 1 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s %%s | %%s","with":{"rawtext":[{"translate":"title.easter_egg_7"},{"translate":"subtitle.easter_egg_7"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}}]}}]}

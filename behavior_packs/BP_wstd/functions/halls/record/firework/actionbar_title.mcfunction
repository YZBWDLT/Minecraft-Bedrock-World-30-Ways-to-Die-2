# ===== 快捷栏标题 =====

# --- 非速通模式 ---
execute if score speedrunMode settings matches 0 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s","with":{"rawtext":[{"translate":"title.firework_tutorial"},{"translate":"subtitle.firework_tutorial"},{"translate":"actionbar.firework_tutorial.step","with":{"rawtext":[{"score":{"objective":"data","name":"fireworkTutorial.step"}}]}}]}}]}

# --- 速通模式 ---
execute if score speedrunMode settings matches 1 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s | %%s","with":{"rawtext":[{"translate":"title.firework_tutorial"},{"translate":"subtitle.firework_tutorial"},{"translate":"actionbar.firework_tutorial.step","with":{"rawtext":[{"score":{"objective":"data","name":"fireworkTutorial.step"}}]}},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}}]}}]}

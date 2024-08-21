# ===== 快捷栏标题 =====

# --- 玩家在等待区时 ---
execute as @a if entity @s[x=-102,y=65,z=65,dx=2,dy=2,dz=2] run titleraw @s actionbar {"rawtext":[{"translate":"actionbar.level_loading"}]}

# --- 玩家不在等待区时 - 非速通模式 ---
execute as @a unless entity @s[x=-102,y=65,z=65,dx=2,dy=2,dz=2] if score speedrunMode settings matches 0 run titleraw @s actionbar {"rawtext":[{"translate":"%%s %%s | §7%%s","with":{"rawtext":[{"translate":"title.level_30"},{"translate":"subtitle.level_30"},{"translate":"actionbar.description.level_30"}]}}]}

# --- 玩家不在等待区时 - 速通模式 ---
execute as @a unless entity @s[x=-102,y=65,z=65,dx=2,dy=2,dz=2] if score speedrunMode settings matches 1 run titleraw @s actionbar {"rawtext":[{"translate":"%%s %%s | %%s","with":{"rawtext":[{"translate":"title.level_30"},{"translate":"subtitle.level_30"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}}]}}]}

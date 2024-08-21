# ===== 剧情线 =====

# --- 第一阶段时 ---

## [160] 播放标题
execute if score dialogue active matches 6 if score dialogue time matches 160 run titleraw @a title {"rawtext":[{"translate":"title.mainline_completed"}]}
execute if score dialogue active matches 6 if score dialogue time matches 160 run titleraw @a subtitle {"rawtext":[{"translate":"subtitle.mainline_completed"}]}
execute if score dialogue active matches 6 if score dialogue time matches 160 as @a at @s run playsound random.levelup @s ~~~ 1 0.75 1

## [161] 解除视角控制
execute if score dialogue active matches 6 if score dialogue time matches 161 run function lib/modify_states/dialogue/disable

# --- 第二阶段时 ---

execute if score dialogue active matches 7 if score dialogue time matches 80 run tellraw @a {"rawtext":[{"translate":"chat.end.mainline_completed.line1"}]}
execute if score dialogue active matches 7 if score dialogue time matches 80 as @a at @s run playsound random.pop @s

execute if score dialogue active matches 7 if score dialogue time matches 160 run tellraw @a {"rawtext":[{"translate":"chat.end.mainline_completed.line2"}]}
execute if score dialogue active matches 7 if score dialogue time matches 160 as @a at @s run playsound random.pop @s

execute if score dialogue active matches 7 if score dialogue time matches 240 run tellraw @a {"rawtext":[{"translate":"chat.end.mainline_completed.line3"}]}
execute if score dialogue active matches 7 if score dialogue time matches 240 as @a at @s run playsound random.pop @s

execute if score dialogue active matches 7 if score dialogue time matches 320 run tellraw @a {"rawtext":[{"translate":"chat.end.mainline_completed.line4"}]}
execute if score dialogue active matches 7 if score dialogue time matches 320 as @a at @s run playsound random.pop @s

execute if score dialogue active matches 7 if score dialogue time matches 400 run tellraw @a {"rawtext":[{"translate":"chat.end.mainline_completed.line5","with":{"rawtext":[{"score":{"objective":"record","name":"progress.advancement"}}]}}]}
execute if score dialogue active matches 7 if score dialogue time matches 400 as @a at @s run playsound random.pop @s

execute if score dialogue active matches 7 if score dialogue time matches 480 run tellraw @a {"rawtext":[{"translate":"chat.end.mainline_completed.line6"}]}
execute if score dialogue active matches 7 if score dialogue time matches 480 as @a at @s run playsound random.pop @s

## [559] 解除视角控制 | 560时，要进行传送并且回到大厅状态
execute if score dialogue active matches 7 if score dialogue time matches 559 run function lib/modify_states/dialogue/disable

# ===== 第一阶段剧情线 =====

execute if score dialogue time matches 80 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line1"}]}
execute if score dialogue time matches 80 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 160 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line2"}]}
execute if score dialogue time matches 160 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 240 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line3"}]}
execute if score dialogue time matches 240 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 320 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line4","with":{"rawtext":[{"selector":"@s"}]}}]}
execute if score dialogue time matches 320 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 400 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line5"}]}
execute if score dialogue time matches 400 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 480 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line6"}]}
execute if score dialogue time matches 480 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 560 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line7"}]}
execute if score dialogue time matches 560 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 640 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line8","with":{"rawtext":[{"selector":"@s"}]}}]}
execute if score dialogue time matches 640 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 720 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line9"}]}
execute if score dialogue time matches 720 as @a at @s run playsound random.pop @s

# --- [721] 解除视角控制 ---
execute if score dialogue time matches 721 run function lib/modify_states/dialogue/disable

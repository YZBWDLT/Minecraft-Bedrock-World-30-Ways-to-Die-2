# ===== 第三阶段剧情线 =====

execute if score dialogue time matches 80 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line10"}]}
execute if score dialogue time matches 80 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 160 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line11"}]}
execute if score dialogue time matches 160 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 240 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line12"}]}
execute if score dialogue time matches 240 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 320 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line13"}]}
execute if score dialogue time matches 320 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 400 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line14"}]}
execute if score dialogue time matches 400 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 480 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line15"}]}
execute if score dialogue time matches 480 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 560 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line16"}]}
execute if score dialogue time matches 560 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 640 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line17"}]}
execute if score dialogue time matches 640 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 720 as @a run tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line18"}]}
execute if score dialogue time matches 720 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 800 as @a run tellraw @s {"rawtext":[{"translate":"chat.author_left_game"}]}
execute if score dialogue time matches 800 as @a at @s run playsound random.pop @s

execute if score dialogue time matches 801 run function lib/modify_states/dialogue/disable


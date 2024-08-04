# ===== 剧情线 =====
# 仅限在lib/function_lists/dialogue注册后，且启用剧情线后执行

# --- 对话内容 ---
execute if score dialogue time matches 20 run tellraw @a {"rawtext":[{"translate":"chat.level.easter_egg_1.dialogue.line1"}]}
execute if score dialogue time matches 20 run function lib/modify_states/sound/random_pop

execute if score dialogue time matches 100 run tellraw @a {"rawtext":[{"translate":"chat.level.easter_egg_1.dialogue.line2"}]}
execute if score dialogue time matches 100 run function lib/modify_states/sound/random_pop

execute if score dialogue time matches 180 run tellraw @a {"rawtext":[{"translate":"chat.level.easter_egg_1.dialogue.line3"}]}
execute if score dialogue time matches 180 run function lib/modify_states/sound/random_pop
execute if score dialogue time matches 180 as @a at @s run playsound smelly @s ~~~ 0.15

execute if score dialogue time matches 280 run function lib/modify_states/dialogue/disable

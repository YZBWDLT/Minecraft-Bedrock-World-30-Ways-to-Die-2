# ===== 剧情线 =====
# 仅限在lib/function_lists/dialogue注册后，且启用剧情线后执行

# --- 进入差评后触发的内容 ---
execute if score dialogue time matches 40 as @a run tellraw @s {"rawtext":[{"translate":"chat.level.easter_egg_4.dislike.line1"}]}
execute if score dialogue time matches 40 run function lib/modify_states/sound/random_pop

execute if score dialogue time matches 120 as @a run tellraw @s {"rawtext":[{"translate":"chat.level.easter_egg_4.dislike.line2"}]}
execute if score dialogue time matches 120 run function lib/modify_states/sound/random_pop

execute if score dialogue time matches 200 if score isNetease data matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.level.easter_egg_4.dislike.line3"}]}
execute if score dialogue time matches 200 if score isNetease data matches 1 as @a run tellraw @s {"rawtext":[{"translate":"netease.chat.level.easter_egg_4.dislike.line3"}]}
execute if score dialogue time matches 200 run function lib/modify_states/sound/random_pop

execute if score dialogue time matches 201 run function lib/modify_states/dialogue/disable

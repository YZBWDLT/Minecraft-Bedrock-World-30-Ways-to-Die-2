# ===== 剧情线 =====
# 仅限在lib/function_lists/dialogue注册后，且启用剧情线后执行

# --- 对话内容 ---
execute if score dialogue time matches 80 as @a run tellraw @s {"rawtext":[{"translate":"chat.level.level_30.dialogue.line2","with":{"rawtext":[{"selector":"@s"}]}}]}
execute if score dialogue time matches 80 run function lib/modify_states/sound/random_pop

execute if score dialogue time matches 160 as @a run tellraw @s {"rawtext":[{"translate":"chat.level.level_30.dialogue.line3"}]}
execute if score dialogue time matches 160 run function lib/modify_states/sound/random_pop

execute if score dialogue time matches 240 as @a run tellraw @s {"rawtext":[{"translate":"chat.level.level_30.dialogue.line4"}]}
execute if score dialogue time matches 240 run function lib/modify_states/sound/random_pop

execute if score dialogue time matches 320 as @a run tellraw @s {"rawtext":[{"translate":"chat.level.level_30.dialogue.line5"}]}
execute if score dialogue time matches 320 run function lib/modify_states/sound/random_pop

execute if score dialogue time matches 400 as @a run tellraw @s {"rawtext":[{"translate":"chat.level.level_30.dialogue.line6","with":{"rawtext":[{"selector":"@s"}]}}]}
execute if score dialogue time matches 400 run function lib/modify_states/sound/random_pop

execute if score dialogue time matches 480 as @a run tellraw @s {"rawtext":[{"translate":"chat.level.level_30.dialogue.line7"}]}
execute if score dialogue time matches 480 run function lib/modify_states/sound/random_pop

execute if score dialogue time matches 560 as @a run tellraw @s {"rawtext":[{"translate":"chat.author_left_game"}]}
execute if score dialogue time matches 560 run function lib/modify_states/sound/random_pop

execute if score dialogue time matches 640 as @a run tellraw @s {"rawtext":[{"translate":"chat.level.level_30.dialogue.line9","with":{"rawtext":[{"selector":"@s"}]}}]}
execute if score dialogue time matches 640 run function lib/modify_states/sound/random_pop

# 此处将此命令注释掉，这是因为开始关卡本体后会进行这条命令，放这条命令只是示意在720刻将执行等效的命令
# execute if score dialogue time matches 720.. run function lib/modify_states/dialogue/disable

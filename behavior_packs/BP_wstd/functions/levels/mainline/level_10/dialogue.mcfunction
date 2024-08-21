# ===== 剧情线 =====
# 仅限在lib/function_lists/dialogue注册后，且启用剧情线后执行

# --- 功能模块 ---
execute if score dialogue time matches 10 run tellraw @a {"rawtext":[{"translate":"functions.levels.mainline.level_10.dialogue.line1"}]}
execute if score dialogue time matches 10 run function lib/modify_states/sound/mob_villager_yes

execute if score dialogue time matches 70 run tellraw @a {"rawtext":[{"translate":"functions.levels.mainline.level_10.dialogue.line2"}]}
execute if score dialogue time matches 70 run function lib/modify_states/sound/mob_villager_yes

execute if score dialogue time matches 130 run tellraw @a {"rawtext":[{"translate":"functions.levels.mainline.level_10.dialogue.line3"}]}
execute if score dialogue time matches 130 run function lib/modify_states/sound/mob_villager_yes

execute if score dialogue time matches 190 run tellraw @a {"rawtext":[{"translate":"functions.levels.mainline.level_10.dialogue.line4"}]}
execute if score dialogue time matches 190 run function lib/modify_states/sound/mob_villager_yes

execute if score dialogue time matches 250 run tellraw @a {"rawtext":[{"translate":"functions.levels.mainline.level_10.dialogue.line5"}]}
execute if score dialogue time matches 250 run function lib/modify_states/sound/mob_villager_yes

execute if score dialogue time matches 310 run tellraw @a {"rawtext":[{"translate":"functions.levels.mainline.level_10.dialogue.line6"}]}
execute if score dialogue time matches 310 run function lib/modify_states/sound/mob_villager_yes

execute if score dialogue time matches 370 run tellraw @a {"rawtext":[{"translate":"functions.levels.mainline.level_10.dialogue.line7"}]}
execute if score dialogue time matches 370 run function lib/modify_states/sound/mob_villager_yes

execute if score dialogue time matches 371.. run function lib/modify_states/dialogue/disable

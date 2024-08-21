# ===== 解锁所有关卡 =====
# 解锁主线关卡

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"chat.error.not_developer_mode"}]}

# --- 开启开发者模式时 ---

## 若关卡已解锁，则报错并播放音效
execute if score developerMode settings matches 1 if score progress.level record matches 30 run tellraw @a {"rawtext":[{"translate":"chat.error.level_unlocked"}]}
execute if score developerMode settings matches 1 if score progress.level record matches 30 run function lib/modify_states/sound/mob_villager_no

## 若关卡未解锁，则解锁并播放音效
execute if score developerMode settings matches 1 unless score progress.level record matches 30 run tellraw @a {"rawtext":[{"translate":"chat.developer.mainline_level_unlocked"}]}
execute if score developerMode settings matches 1 unless score progress.level record matches 30 run function lib/modify_states/sound/mob_villager_yes
execute if score developerMode settings matches 1 unless score progress.level record matches 30 run scoreboard players set progress.level record 30
execute if score developerMode settings matches 1 unless score progress.level record matches 30 run function lib/scoreboard/mainline_levels

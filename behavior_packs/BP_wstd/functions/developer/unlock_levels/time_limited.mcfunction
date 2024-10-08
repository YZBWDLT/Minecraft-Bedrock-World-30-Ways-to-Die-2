# ===== 解锁所有关卡 =====
# 解锁限时关卡

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"chat.error.not_developer_mode"}]}

# --- 开启开发者模式时 ---

## 若关卡已解锁，则报错并播放音效
execute if score developerMode settings matches 1 if score progress.timeLimited record matches 5 run tellraw @a {"rawtext":[{"translate":"chat.error.level_unlocked"}]}
execute if score developerMode settings matches 1 if score progress.timeLimited record matches 5 run function lib/modify_states/sound/mob_villager_no

## 若关卡未解锁，则解锁并播放音效
execute if score developerMode settings matches 1 unless score progress.timeLimited record matches 5 run tellraw @a {"rawtext":[{"translate":"chat.developer.time_limited_level_unlocked"}]}
execute if score developerMode settings matches 1 unless score progress.timeLimited record matches 5 run function lib/modify_states/sound/mob_villager_yes
execute if score developerMode settings matches 1 unless score progress.timeLimited record matches 5 run scoreboard players set progress.timeLimited record 5
execute if score developerMode settings matches 1 unless score progress.timeLimited record matches 5 run function lib/scoreboard/time_limited_levels

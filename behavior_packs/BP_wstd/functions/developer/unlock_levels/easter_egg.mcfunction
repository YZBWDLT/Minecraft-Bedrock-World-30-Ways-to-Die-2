# ===== 解锁所有关卡 =====
# 解锁彩蛋关卡

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"chat.error.not_developer_mode"}]}

# --- 开启开发者模式时 ---

## 若关卡已解锁，则报错并播放音效
execute if score developerMode settings matches 1 if score progress.easterEgg record matches 10 run tellraw @a {"rawtext":[{"translate":"chat.error.level_unlocked"}]}
execute if score developerMode settings matches 1 if score progress.easterEgg record matches 10 run function lib/modify_states/sound/mob_villager_no

## 若关卡未解锁，则解锁并播放音效
execute if score developerMode settings matches 1 unless score progress.easterEgg record matches 10 run tellraw @a {"rawtext":[{"translate":"chat.developer.easter_egg_level_unlocked"}]}
execute if score developerMode settings matches 1 unless score progress.easterEgg record matches 10 run function lib/modify_states/sound/mob_villager_yes
execute if score developerMode settings matches 1 unless score progress.easterEgg record matches 10 run scoreboard players set progress.easterEgg record 10

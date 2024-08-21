# ===== 分值操作 =====
# 当有生物掉到坑里时，执行此内容

# --- 猪掉下去时 ---
execute if entity @s[type=pig] run scoreboard players add timeLimited4.totalScore data 1

# --- 猪灵掉下去时 ---
execute if entity @s[type=piglin] run scoreboard players remove timeLimited4.totalScore data 1

# --- 僵尸猪灵掉下去时 ---
# 重启游戏

execute if entity @s[type=zombie_pigman] run tellraw @a {"rawtext":[{"translate":"chat.level.easter_egg_10.failed"}]} 
execute if entity @s[type=zombie_pigman] run function levels/time_limited/level_4/start

# --- 清除自身 ---
kill @s[type=!player]
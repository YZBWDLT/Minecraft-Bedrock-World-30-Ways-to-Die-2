# ===== 玩家完成跑酷后 =====

# --- 填充白色玻璃 ---
# 防止玩家掉下虚空
fill -94 19 -52 -57 19 -38 stained_glass ["color"="white"]

# --- 提示玩家 ---
tellraw @a {"rawtext":[{"translate":"chat.level.easter_egg_3.destination"}]}

# --- 停止检测 ---
scoreboard players set easterEgg3.finishedParkour data 1

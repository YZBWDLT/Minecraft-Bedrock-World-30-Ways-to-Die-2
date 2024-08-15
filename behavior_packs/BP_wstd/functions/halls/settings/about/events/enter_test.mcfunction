# ===== 玩家进入检测 =====
# 当玩家进入粒子位置后，则触发某些函数

# --- 地图信息 ---
execute as @a[x=-98,y=19,z=49,r=1] run function halls/settings/about/functions/map_information

# --- 制作人 ---
execute as @a[x=-102,y=19,z=49,r=1] run function halls/settings/about/functions/credits

# --- 更新日志 ---
execute as @a[x=-106,y=19,z=49,r=1] run function halls/settings/about/functions/update_log

# --- 地图规则 ---
execute as @a[x=-98,y=19,z=43.5,r=1] run function halls/settings/about/functions/map_rule

# --- 地图玩法 ---
execute as @a[x=-102,y=19,z=43.5,r=1] run function halls/settings/about/functions/how_to_play

# --- 常见问题 ---
execute as @a[x=-106,y=19,z=43.5,r=1] run function halls/settings/about/functions/help

# --- 浏览地图 ---
execute as @a[x=-108.5,y=19,z=46.5,r=1] run function halls/settings/explore_map/start

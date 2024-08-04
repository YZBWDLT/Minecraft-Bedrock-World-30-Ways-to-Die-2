# ===== 玩家进入检测 =====
# 当玩家进入粒子位置后，则触发某些函数

# --- 地图信息 ---
execute as @a[x=-102,y=19,z=49,r=1] run function halls/settings/about/functions/map_information

# --- 制作人 ---
execute as @a[x=-102,y=19,z=43.5,r=1] run function halls/settings/about/functions/credits

# --- 更新日志 ---
execute as @a[x=-104,y=19,z=49,r=1] run function halls/settings/about/functions/update_log

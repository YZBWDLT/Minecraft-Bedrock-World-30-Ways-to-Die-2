# ===== 玩家进入检测 =====
# 当玩家进入粒子位置后，则触发某些函数

# --- 地图难度设定 ---
execute as @a[x=-100,y=19,z=49,r=1] run function halls/settings/difficulty/start

# --- 杂项设置 ---
execute as @a[x=-104,y=19,z=49,r=1] run function halls/settings/miscellaneous/start

# --- 关于本地图 ---
execute as @a[x=-100,y=19,z=43.5,r=1] run function halls/settings/about/start

# --- 权限等级设定与高级功能 ---
execute as @a[x=-104,y=19,z=43.5,r=1] run function halls/settings/advanced/start

# --- 恢复所有设置为默认 ---
execute as @a[x=-108.5,y=19,z=46.5,r=1] run function halls/settings/main/functions/reset_settings

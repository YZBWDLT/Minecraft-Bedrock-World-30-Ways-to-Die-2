# ===== 玩家进入检测 =====
# 当玩家进入粒子位置后，则触发某些函数

# --- 第30关对话设定 ---
execute as @a[x=-100,y=19,z=49,r=1] run function halls/settings/miscellaneous/functions/level_30_dialogue

# --- 结束特效的烟花设定 ---
execute as @a[x=-104,y=19,z=49,r=1] run function halls/settings/firework/start

# --- 记分板显示设定 ---
execute as @a[x=-100,y=19,z=43.5,r=1] run function halls/settings/miscellaneous/functions/scoreboard_display

# --- 地图时间设定 ---
execute as @a[x=-104,y=19,z=43.5,r=1] run function halls/settings/miscellaneous/functions/map_time

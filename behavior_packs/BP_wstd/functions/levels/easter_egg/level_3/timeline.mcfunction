# backend.counter=0时，检测玩家

# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 检测玩家到达跑酷终点 ---
execute if score easterEgg3.finishedParkour data matches 0 as @a[x=-93,y=20,z=-49,dx=6,dy=6,dz=6] run function levels/easter_egg/level_3/events/finished_parkour

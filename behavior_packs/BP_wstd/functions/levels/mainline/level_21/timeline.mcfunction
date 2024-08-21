# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 终点提示 ---
execute if score tick time matches 0 run particle wstd:red 46 29 93

# --- 检测玩家到达终点 ---
execute as @a[x=46,y=30,z=93,dx=0,dy=3,dz=0] run kill @s

# ===== 玩家进入检测 =====
# 当玩家进入粒子位置后，则触发某些函数
# 仅用于常见问题状态下

# --- 上一步 ---
execute as @a[x=-100,y=19,z=49,r=1] run function halls/settings/about/functions/help_previous

# --- 下一步 ---
execute as @a[x=-106,y=19,z=49,r=1] run function halls/settings/about/functions/help_next

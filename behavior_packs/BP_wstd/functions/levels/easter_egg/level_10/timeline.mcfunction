# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 玩家猜到石英块检测 ---
execute as @a at @s if entity @s[x=23,y=~,z=-49,dx=10,dy=0,dz=10] if block ~~-1~ quartz_block run function levels/easter_egg/level_10/events/fell_on_block

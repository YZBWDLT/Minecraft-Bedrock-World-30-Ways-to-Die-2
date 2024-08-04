# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 将玩家传送回来 ---
execute as @a at @s unless entity @s[x=-136,y=~,z=-155,dx=256,dy=0,dz=256] run function halls/settings/explore_map/events/tp_player_back

# --- 当玩家抬头后，返回设置中心 ---
execute as @a[rx=-85,rxm=-90] run function entities/player/using_back

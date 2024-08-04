# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 检测玩家掉下虚空 ---
execute as @a at @s if entity @s[x=~,y=-1,z=~,dx=0,dy=-50,dz=0] run scoreboard players set level18.playerFellIntoVoid data 1

# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 检测玩家维度 ---

## 当玩家进入下界后，将进入下界的标记记为1
execute if entity @a[scores={dimension=1}] run scoreboard players set level7.enteredNether data 1

# --- 当玩家进入下界后 ---

## 重新加载第7关，并将玩家传送到第7关的下界房间
execute in nether if entity @a[x=-3,y=10,z=-10,dx=3,dy=3,dz=3] run structure load mainline:level_7_nether 30 13 0
execute in nether as @a[x=-3,y=10,z=-10,dx=3,dy=3,dz=3] run tp @s 32 14 5 facing 40 14 5

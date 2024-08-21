# ===== 输出为记分板 =====
# 用于将当前的攻略数据输出到记分板上

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 输出使用的攻略数目，中文为display记分板，英文为display1记分板

# --- 中文 ---
scoreboard players reset "§l§3攻略 §r§60§7/26" display
scoreboard players reset "§l§3攻略 §r§e1§7/26" display
scoreboard players reset "§l§3攻略 §r§e2§7/26" display
scoreboard players reset "§l§3攻略 §r§e3§7/26" display
scoreboard players reset "§l§3攻略 §r§e4§7/26" display
scoreboard players reset "§l§3攻略 §r§e5§7/26" display
scoreboard players reset "§l§3攻略 §r§a6§7/26" display
scoreboard players reset "§l§3攻略 §r§a7§7/26" display
scoreboard players reset "§l§3攻略 §r§a8§7/26" display
scoreboard players reset "§l§3攻略 §r§a9§7/26" display
scoreboard players reset "§l§3攻略 §r§a10§7/26" display
scoreboard players reset "§l§3攻略 §r§b11§7/26" display
scoreboard players reset "§l§3攻略 §r§b12§7/26" display
scoreboard players reset "§l§3攻略 §r§b13§7/26" display
scoreboard players reset "§l§3攻略 §r§b14§7/26" display
scoreboard players reset "§l§3攻略 §r§b15§7/26" display
scoreboard players reset "§l§3攻略 §r§d16§7/26" display
scoreboard players reset "§l§3攻略 §r§d17§7/26" display
scoreboard players reset "§l§3攻略 §r§d18§7/26" display
scoreboard players reset "§l§3攻略 §r§d19§7/26" display
scoreboard players reset "§l§3攻略 §r§d20§7/26" display
scoreboard players reset "§l§3攻略 §r§c21§7/26" display
scoreboard players reset "§l§3攻略 §r§c22§7/26" display
scoreboard players reset "§l§3攻略 §r§c23§7/26" display
scoreboard players reset "§l§3攻略 §r§c24§7/26" display
scoreboard players reset "§l§3攻略 §r§c25§7/26" display
scoreboard players reset "§l§3攻略 §r§426§7/26" display

execute if score strategyUsed record matches 0 run scoreboard players set "§l§3攻略 §r§60§7/26" display 14
execute if score strategyUsed record matches 1 run scoreboard players set "§l§3攻略 §r§e1§7/26" display 14
execute if score strategyUsed record matches 2 run scoreboard players set "§l§3攻略 §r§e2§7/26" display 14
execute if score strategyUsed record matches 3 run scoreboard players set "§l§3攻略 §r§e3§7/26" display 14
execute if score strategyUsed record matches 4 run scoreboard players set "§l§3攻略 §r§e4§7/26" display 14
execute if score strategyUsed record matches 5 run scoreboard players set "§l§3攻略 §r§e5§7/26" display 14
execute if score strategyUsed record matches 6 run scoreboard players set "§l§3攻略 §r§a6§7/26" display 14
execute if score strategyUsed record matches 7 run scoreboard players set "§l§3攻略 §r§a7§7/26" display 14
execute if score strategyUsed record matches 8 run scoreboard players set "§l§3攻略 §r§a8§7/26" display 14
execute if score strategyUsed record matches 9 run scoreboard players set "§l§3攻略 §r§a9§7/26" display 14
execute if score strategyUsed record matches 10 run scoreboard players set "§l§3攻略 §r§a10§7/26" display 14
execute if score strategyUsed record matches 11 run scoreboard players set "§l§3攻略 §r§b11§7/26" display 14
execute if score strategyUsed record matches 12 run scoreboard players set "§l§3攻略 §r§b12§7/26" display 14
execute if score strategyUsed record matches 13 run scoreboard players set "§l§3攻略 §r§b13§7/26" display 14
execute if score strategyUsed record matches 14 run scoreboard players set "§l§3攻略 §r§b14§7/26" display 14
execute if score strategyUsed record matches 15 run scoreboard players set "§l§3攻略 §r§b15§7/26" display 14
execute if score strategyUsed record matches 16 run scoreboard players set "§l§3攻略 §r§d16§7/26" display 14
execute if score strategyUsed record matches 17 run scoreboard players set "§l§3攻略 §r§d17§7/26" display 14
execute if score strategyUsed record matches 18 run scoreboard players set "§l§3攻略 §r§d18§7/26" display 14
execute if score strategyUsed record matches 19 run scoreboard players set "§l§3攻略 §r§d19§7/26" display 14
execute if score strategyUsed record matches 20 run scoreboard players set "§l§3攻略 §r§d20§7/26" display 14
execute if score strategyUsed record matches 21 run scoreboard players set "§l§3攻略 §r§c21§7/26" display 14
execute if score strategyUsed record matches 22 run scoreboard players set "§l§3攻略 §r§c22§7/26" display 14
execute if score strategyUsed record matches 23 run scoreboard players set "§l§3攻略 §r§c23§7/26" display 14
execute if score strategyUsed record matches 24 run scoreboard players set "§l§3攻略 §r§c24§7/26" display 14
execute if score strategyUsed record matches 25 run scoreboard players set "§l§3攻略 §r§c25§7/26" display 14
execute if score strategyUsed record matches 26 run scoreboard players set "§l§3攻略 §r§426§7/26" display 14

# --- English ---
scoreboard players reset "§l§3Stgy §r§60§7/26" display1
scoreboard players reset "§l§3Stgy §r§e1§7/26" display1
scoreboard players reset "§l§3Stgy §r§e2§7/26" display1
scoreboard players reset "§l§3Stgy §r§e3§7/26" display1
scoreboard players reset "§l§3Stgy §r§e4§7/26" display1
scoreboard players reset "§l§3Stgy §r§e5§7/26" display1
scoreboard players reset "§l§3Stgy §r§a6§7/26" display1
scoreboard players reset "§l§3Stgy §r§a7§7/26" display1
scoreboard players reset "§l§3Stgy §r§a8§7/26" display1
scoreboard players reset "§l§3Stgy §r§a9§7/26" display1
scoreboard players reset "§l§3Stgy §r§a10§7/26" display1
scoreboard players reset "§l§3Stgy §r§b11§7/26" display1
scoreboard players reset "§l§3Stgy §r§b12§7/26" display1
scoreboard players reset "§l§3Stgy §r§b13§7/26" display1
scoreboard players reset "§l§3Stgy §r§b14§7/26" display1
scoreboard players reset "§l§3Stgy §r§b15§7/26" display1
scoreboard players reset "§l§3Stgy §r§d16§7/26" display1
scoreboard players reset "§l§3Stgy §r§d17§7/26" display1
scoreboard players reset "§l§3Stgy §r§d18§7/26" display1
scoreboard players reset "§l§3Stgy §r§d19§7/26" display1
scoreboard players reset "§l§3Stgy §r§d20§7/26" display1
scoreboard players reset "§l§3Stgy §r§c21§7/26" display1
scoreboard players reset "§l§3Stgy §r§c22§7/26" display1
scoreboard players reset "§l§3Stgy §r§c23§7/26" display1
scoreboard players reset "§l§3Stgy §r§c24§7/26" display1
scoreboard players reset "§l§3Stgy §r§c25§7/26" display1
scoreboard players reset "§l§3Stgy §r§426§7/26" display1

execute if score strategyUsed record matches 0 run scoreboard players set "§l§3Stgy §r§60§7/26" display1 14
execute if score strategyUsed record matches 1 run scoreboard players set "§l§3Stgy §r§e1§7/26" display1 14
execute if score strategyUsed record matches 2 run scoreboard players set "§l§3Stgy §r§e2§7/26" display1 14
execute if score strategyUsed record matches 3 run scoreboard players set "§l§3Stgy §r§e3§7/26" display1 14
execute if score strategyUsed record matches 4 run scoreboard players set "§l§3Stgy §r§e4§7/26" display1 14
execute if score strategyUsed record matches 5 run scoreboard players set "§l§3Stgy §r§e5§7/26" display1 14
execute if score strategyUsed record matches 6 run scoreboard players set "§l§3Stgy §r§a6§7/26" display1 14
execute if score strategyUsed record matches 7 run scoreboard players set "§l§3Stgy §r§a7§7/26" display1 14
execute if score strategyUsed record matches 8 run scoreboard players set "§l§3Stgy §r§a8§7/26" display1 14
execute if score strategyUsed record matches 9 run scoreboard players set "§l§3Stgy §r§a9§7/26" display1 14
execute if score strategyUsed record matches 10 run scoreboard players set "§l§3Stgy §r§a10§7/26" display1 14
execute if score strategyUsed record matches 11 run scoreboard players set "§l§3Stgy §r§b11§7/26" display1 14
execute if score strategyUsed record matches 12 run scoreboard players set "§l§3Stgy §r§b12§7/26" display1 14
execute if score strategyUsed record matches 13 run scoreboard players set "§l§3Stgy §r§b13§7/26" display1 14
execute if score strategyUsed record matches 14 run scoreboard players set "§l§3Stgy §r§b14§7/26" display1 14
execute if score strategyUsed record matches 15 run scoreboard players set "§l§3Stgy §r§b15§7/26" display1 14
execute if score strategyUsed record matches 16 run scoreboard players set "§l§3Stgy §r§d16§7/26" display1 14
execute if score strategyUsed record matches 17 run scoreboard players set "§l§3Stgy §r§d17§7/26" display1 14
execute if score strategyUsed record matches 18 run scoreboard players set "§l§3Stgy §r§d18§7/26" display1 14
execute if score strategyUsed record matches 19 run scoreboard players set "§l§3Stgy §r§d19§7/26" display1 14
execute if score strategyUsed record matches 20 run scoreboard players set "§l§3Stgy §r§d20§7/26" display1 14
execute if score strategyUsed record matches 21 run scoreboard players set "§l§3Stgy §r§c21§7/26" display1 14
execute if score strategyUsed record matches 22 run scoreboard players set "§l§3Stgy §r§c22§7/26" display1 14
execute if score strategyUsed record matches 23 run scoreboard players set "§l§3Stgy §r§c23§7/26" display1 14
execute if score strategyUsed record matches 24 run scoreboard players set "§l§3Stgy §r§c24§7/26" display1 14
execute if score strategyUsed record matches 25 run scoreboard players set "§l§3Stgy §r§c25§7/26" display1 14
execute if score strategyUsed record matches 26 run scoreboard players set "§l§3Stgy §r§426§7/26" display1 14
# ===== 输出为记分板 =====
# 用于将当前的提示数据输出到记分板上

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 输出使用的提示数目，中文为display记分板，英文为display1记分板

# --- 中文 ---
scoreboard players reset "§l§2提示 §r§60§7/26" display
scoreboard players reset "§l§2提示 §r§e1§7/26" display
scoreboard players reset "§l§2提示 §r§e2§7/26" display
scoreboard players reset "§l§2提示 §r§e3§7/26" display
scoreboard players reset "§l§2提示 §r§e4§7/26" display
scoreboard players reset "§l§2提示 §r§e5§7/26" display
scoreboard players reset "§l§2提示 §r§a6§7/26" display
scoreboard players reset "§l§2提示 §r§a7§7/26" display
scoreboard players reset "§l§2提示 §r§a8§7/26" display
scoreboard players reset "§l§2提示 §r§a9§7/26" display
scoreboard players reset "§l§2提示 §r§a10§7/26" display
scoreboard players reset "§l§2提示 §r§b11§7/26" display
scoreboard players reset "§l§2提示 §r§b12§7/26" display
scoreboard players reset "§l§2提示 §r§b13§7/26" display
scoreboard players reset "§l§2提示 §r§b14§7/26" display
scoreboard players reset "§l§2提示 §r§b15§7/26" display
scoreboard players reset "§l§2提示 §r§d16§7/26" display
scoreboard players reset "§l§2提示 §r§d17§7/26" display
scoreboard players reset "§l§2提示 §r§d18§7/26" display
scoreboard players reset "§l§2提示 §r§d19§7/26" display
scoreboard players reset "§l§2提示 §r§d20§7/26" display
scoreboard players reset "§l§2提示 §r§c21§7/26" display
scoreboard players reset "§l§2提示 §r§c22§7/26" display
scoreboard players reset "§l§2提示 §r§c23§7/26" display
scoreboard players reset "§l§2提示 §r§c24§7/26" display
scoreboard players reset "§l§2提示 §r§c25§7/26" display
scoreboard players reset "§l§2提示 §r§426§7/26" display

execute if score hintUsed record matches 0 run scoreboard players set "§l§2提示 §r§60§7/26" display 12
execute if score hintUsed record matches 1 run scoreboard players set "§l§2提示 §r§e1§7/26" display 12
execute if score hintUsed record matches 2 run scoreboard players set "§l§2提示 §r§e2§7/26" display 12
execute if score hintUsed record matches 3 run scoreboard players set "§l§2提示 §r§e3§7/26" display 12
execute if score hintUsed record matches 4 run scoreboard players set "§l§2提示 §r§e4§7/26" display 12
execute if score hintUsed record matches 5 run scoreboard players set "§l§2提示 §r§e5§7/26" display 12
execute if score hintUsed record matches 6 run scoreboard players set "§l§2提示 §r§a6§7/26" display 12
execute if score hintUsed record matches 7 run scoreboard players set "§l§2提示 §r§a7§7/26" display 12
execute if score hintUsed record matches 8 run scoreboard players set "§l§2提示 §r§a8§7/26" display 12
execute if score hintUsed record matches 9 run scoreboard players set "§l§2提示 §r§a9§7/26" display 12
execute if score hintUsed record matches 10 run scoreboard players set "§l§2提示 §r§a10§7/26" display 12
execute if score hintUsed record matches 11 run scoreboard players set "§l§2提示 §r§b11§7/26" display 12
execute if score hintUsed record matches 12 run scoreboard players set "§l§2提示 §r§b12§7/26" display 12
execute if score hintUsed record matches 13 run scoreboard players set "§l§2提示 §r§b13§7/26" display 12
execute if score hintUsed record matches 14 run scoreboard players set "§l§2提示 §r§b14§7/26" display 12
execute if score hintUsed record matches 15 run scoreboard players set "§l§2提示 §r§b15§7/26" display 12
execute if score hintUsed record matches 16 run scoreboard players set "§l§2提示 §r§d16§7/26" display 12
execute if score hintUsed record matches 17 run scoreboard players set "§l§2提示 §r§d17§7/26" display 12
execute if score hintUsed record matches 18 run scoreboard players set "§l§2提示 §r§d18§7/26" display 12
execute if score hintUsed record matches 19 run scoreboard players set "§l§2提示 §r§d19§7/26" display 12
execute if score hintUsed record matches 20 run scoreboard players set "§l§2提示 §r§d20§7/26" display 12
execute if score hintUsed record matches 21 run scoreboard players set "§l§2提示 §r§c21§7/26" display 12
execute if score hintUsed record matches 22 run scoreboard players set "§l§2提示 §r§c22§7/26" display 12
execute if score hintUsed record matches 23 run scoreboard players set "§l§2提示 §r§c23§7/26" display 12
execute if score hintUsed record matches 24 run scoreboard players set "§l§2提示 §r§c24§7/26" display 12
execute if score hintUsed record matches 25 run scoreboard players set "§l§2提示 §r§c25§7/26" display 12
execute if score hintUsed record matches 26 run scoreboard players set "§l§2提示 §r§426§7/26" display 12

# --- English ---
scoreboard players reset "§l§2Hint §r§60§7/26" display1
scoreboard players reset "§l§2Hint §r§e1§7/26" display1
scoreboard players reset "§l§2Hint §r§e2§7/26" display1
scoreboard players reset "§l§2Hint §r§e3§7/26" display1
scoreboard players reset "§l§2Hint §r§e4§7/26" display1
scoreboard players reset "§l§2Hint §r§e5§7/26" display1
scoreboard players reset "§l§2Hint §r§a6§7/26" display1
scoreboard players reset "§l§2Hint §r§a7§7/26" display1
scoreboard players reset "§l§2Hint §r§a8§7/26" display1
scoreboard players reset "§l§2Hint §r§a9§7/26" display1
scoreboard players reset "§l§2Hint §r§a10§7/26" display1
scoreboard players reset "§l§2Hint §r§b11§7/26" display1
scoreboard players reset "§l§2Hint §r§b12§7/26" display1
scoreboard players reset "§l§2Hint §r§b13§7/26" display1
scoreboard players reset "§l§2Hint §r§b14§7/26" display1
scoreboard players reset "§l§2Hint §r§b15§7/26" display1
scoreboard players reset "§l§2Hint §r§d16§7/26" display1
scoreboard players reset "§l§2Hint §r§d17§7/26" display1
scoreboard players reset "§l§2Hint §r§d18§7/26" display1
scoreboard players reset "§l§2Hint §r§d19§7/26" display1
scoreboard players reset "§l§2Hint §r§d20§7/26" display1
scoreboard players reset "§l§2Hint §r§c21§7/26" display1
scoreboard players reset "§l§2Hint §r§c22§7/26" display1
scoreboard players reset "§l§2Hint §r§c23§7/26" display1
scoreboard players reset "§l§2Hint §r§c24§7/26" display1
scoreboard players reset "§l§2Hint §r§c25§7/26" display1
scoreboard players reset "§l§2Hint §r§426§7/26" display1

execute if score hintUsed record matches 0 run scoreboard players set "§l§2Hint §r§60§7/26" display1 12
execute if score hintUsed record matches 1 run scoreboard players set "§l§2Hint §r§e1§7/26" display1 12
execute if score hintUsed record matches 2 run scoreboard players set "§l§2Hint §r§e2§7/26" display1 12
execute if score hintUsed record matches 3 run scoreboard players set "§l§2Hint §r§e3§7/26" display1 12
execute if score hintUsed record matches 4 run scoreboard players set "§l§2Hint §r§e4§7/26" display1 12
execute if score hintUsed record matches 5 run scoreboard players set "§l§2Hint §r§e5§7/26" display1 12
execute if score hintUsed record matches 6 run scoreboard players set "§l§2Hint §r§a6§7/26" display1 12
execute if score hintUsed record matches 7 run scoreboard players set "§l§2Hint §r§a7§7/26" display1 12
execute if score hintUsed record matches 8 run scoreboard players set "§l§2Hint §r§a8§7/26" display1 12
execute if score hintUsed record matches 9 run scoreboard players set "§l§2Hint §r§a9§7/26" display1 12
execute if score hintUsed record matches 10 run scoreboard players set "§l§2Hint §r§a10§7/26" display1 12
execute if score hintUsed record matches 11 run scoreboard players set "§l§2Hint §r§b11§7/26" display1 12
execute if score hintUsed record matches 12 run scoreboard players set "§l§2Hint §r§b12§7/26" display1 12
execute if score hintUsed record matches 13 run scoreboard players set "§l§2Hint §r§b13§7/26" display1 12
execute if score hintUsed record matches 14 run scoreboard players set "§l§2Hint §r§b14§7/26" display1 12
execute if score hintUsed record matches 15 run scoreboard players set "§l§2Hint §r§b15§7/26" display1 12
execute if score hintUsed record matches 16 run scoreboard players set "§l§2Hint §r§d16§7/26" display1 12
execute if score hintUsed record matches 17 run scoreboard players set "§l§2Hint §r§d17§7/26" display1 12
execute if score hintUsed record matches 18 run scoreboard players set "§l§2Hint §r§d18§7/26" display1 12
execute if score hintUsed record matches 19 run scoreboard players set "§l§2Hint §r§d19§7/26" display1 12
execute if score hintUsed record matches 20 run scoreboard players set "§l§2Hint §r§d20§7/26" display1 12
execute if score hintUsed record matches 21 run scoreboard players set "§l§2Hint §r§c21§7/26" display1 12
execute if score hintUsed record matches 22 run scoreboard players set "§l§2Hint §r§c22§7/26" display1 12
execute if score hintUsed record matches 23 run scoreboard players set "§l§2Hint §r§c23§7/26" display1 12
execute if score hintUsed record matches 24 run scoreboard players set "§l§2Hint §r§c24§7/26" display1 12
execute if score hintUsed record matches 25 run scoreboard players set "§l§2Hint §r§c25§7/26" display1 12
execute if score hintUsed record matches 26 run scoreboard players set "§l§2Hint §r§426§7/26" display1 12
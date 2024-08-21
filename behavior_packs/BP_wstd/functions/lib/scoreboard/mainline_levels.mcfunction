# ===== 输出为记分板 =====
# 用于将当前的关卡数据输出到记分板上

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 输出完成的关卡数目，中文为display记分板，英文为display1记分板

# --- 中文 ---
## 移除记分板
scoreboard players reset "§l§b主线 §r§70§7/30" display
scoreboard players reset "§l§b主线 §r§b1§7/30" display
scoreboard players reset "§l§b主线 §r§b2§7/30" display
scoreboard players reset "§l§b主线 §r§b3§7/30" display
scoreboard players reset "§l§b主线 §r§b4§7/30" display
scoreboard players reset "§l§b主线 §r§b5§7/30" display
scoreboard players reset "§l§b主线 §r§b6§7/30" display
scoreboard players reset "§l§b主线 §r§b7§7/30" display
scoreboard players reset "§l§b主线 §r§b8§7/30" display
scoreboard players reset "§l§b主线 §r§b9§7/30" display
scoreboard players reset "§l§b主线 §r§b10§7/30" display
scoreboard players reset "§l§b主线 §r§a11§7/30" display
scoreboard players reset "§l§b主线 §r§a12§7/30" display
scoreboard players reset "§l§b主线 §r§a13§7/30" display
scoreboard players reset "§l§b主线 §r§a14§7/30" display
scoreboard players reset "§l§b主线 §r§a15§7/30" display
scoreboard players reset "§l§b主线 §r§a16§7/30" display
scoreboard players reset "§l§b主线 §r§a17§7/30" display
scoreboard players reset "§l§b主线 §r§a18§7/30" display
scoreboard players reset "§l§b主线 §r§a19§7/30" display
scoreboard players reset "§l§b主线 §r§a20§7/30" display
scoreboard players reset "§l§b主线 §r§e21§7/30" display
scoreboard players reset "§l§b主线 §r§e22§7/30" display
scoreboard players reset "§l§b主线 §r§e23§7/30" display
scoreboard players reset "§l§b主线 §r§e24§7/30" display
scoreboard players reset "§l§b主线 §r§e25§7/30" display
scoreboard players reset "§l§b主线 §r§e26§7/30" display
scoreboard players reset "§l§b主线 §r§e27§7/30" display
scoreboard players reset "§l§b主线 §r§e28§7/30" display
scoreboard players reset "§l§b主线 §r§e29§7/30" display
scoreboard players reset "§l§b主线 §r§630§7/30" display

## 重置记分板
execute if score progress.level record matches 0 run scoreboard players set "§l§b主线 §r§70§7/30" display 7
execute if score progress.level record matches 1 run scoreboard players set "§l§b主线 §r§b1§7/30" display 7
execute if score progress.level record matches 2 run scoreboard players set "§l§b主线 §r§b2§7/30" display 7
execute if score progress.level record matches 3 run scoreboard players set "§l§b主线 §r§b3§7/30" display 7
execute if score progress.level record matches 4 run scoreboard players set "§l§b主线 §r§b4§7/30" display 7
execute if score progress.level record matches 5 run scoreboard players set "§l§b主线 §r§b5§7/30" display 7
execute if score progress.level record matches 6 run scoreboard players set "§l§b主线 §r§b6§7/30" display 7
execute if score progress.level record matches 7 run scoreboard players set "§l§b主线 §r§b7§7/30" display 7
execute if score progress.level record matches 8 run scoreboard players set "§l§b主线 §r§b8§7/30" display 7
execute if score progress.level record matches 9 run scoreboard players set "§l§b主线 §r§b9§7/30" display 7
execute if score progress.level record matches 10 run scoreboard players set "§l§b主线 §r§b10§7/30" display 7
execute if score progress.level record matches 11 run scoreboard players set "§l§b主线 §r§a11§7/30" display 7
execute if score progress.level record matches 12 run scoreboard players set "§l§b主线 §r§a12§7/30" display 7
execute if score progress.level record matches 32 run scoreboard players set "§l§b主线 §r§a13§7/30" display 7
execute if score progress.level record matches 14 run scoreboard players set "§l§b主线 §r§a14§7/30" display 7
execute if score progress.level record matches 15 run scoreboard players set "§l§b主线 §r§a15§7/30" display 7
execute if score progress.level record matches 16 run scoreboard players set "§l§b主线 §r§a16§7/30" display 7
execute if score progress.level record matches 17 run scoreboard players set "§l§b主线 §r§a17§7/30" display 7
execute if score progress.level record matches 18 run scoreboard players set "§l§b主线 §r§a18§7/30" display 7
execute if score progress.level record matches 19 run scoreboard players set "§l§b主线 §r§a19§7/30" display 7
execute if score progress.level record matches 20 run scoreboard players set "§l§b主线 §r§a20§7/30" display 7
execute if score progress.level record matches 21 run scoreboard players set "§l§b主线 §r§e21§7/30" display 7
execute if score progress.level record matches 22 run scoreboard players set "§l§b主线 §r§e22§7/30" display 7
execute if score progress.level record matches 23 run scoreboard players set "§l§b主线 §r§e23§7/30" display 7
execute if score progress.level record matches 24 run scoreboard players set "§l§b主线 §r§e24§7/30" display 7
execute if score progress.level record matches 25 run scoreboard players set "§l§b主线 §r§e25§7/30" display 7
execute if score progress.level record matches 26 run scoreboard players set "§l§b主线 §r§e26§7/30" display 7
execute if score progress.level record matches 27 run scoreboard players set "§l§b主线 §r§e27§7/30" display 7
execute if score progress.level record matches 28 run scoreboard players set "§l§b主线 §r§e28§7/30" display 7
execute if score progress.level record matches 29 run scoreboard players set "§l§b主线 §r§e29§7/30" display 7
execute if score progress.level record matches 30 run scoreboard players set "§l§b主线 §r§630§7/30" display 7

# --- English ---
## 移除记分板
scoreboard players reset "§l§bML §r§70§7/30" display1
scoreboard players reset "§l§bML §r§b1§7/30" display1
scoreboard players reset "§l§bML §r§b2§7/30" display1
scoreboard players reset "§l§bML §r§b3§7/30" display1
scoreboard players reset "§l§bML §r§b4§7/30" display1
scoreboard players reset "§l§bML §r§b5§7/30" display1
scoreboard players reset "§l§bML §r§b6§7/30" display1
scoreboard players reset "§l§bML §r§b7§7/30" display1
scoreboard players reset "§l§bML §r§b8§7/30" display1
scoreboard players reset "§l§bML §r§b9§7/30" display1
scoreboard players reset "§l§bML §r§b10§7/30" display1
scoreboard players reset "§l§bML §r§a11§7/30" display1
scoreboard players reset "§l§bML §r§a12§7/30" display1
scoreboard players reset "§l§bML §r§a13§7/30" display1
scoreboard players reset "§l§bML §r§a14§7/30" display1
scoreboard players reset "§l§bML §r§a15§7/30" display1
scoreboard players reset "§l§bML §r§a16§7/30" display1
scoreboard players reset "§l§bML §r§a17§7/30" display1
scoreboard players reset "§l§bML §r§a18§7/30" display1
scoreboard players reset "§l§bML §r§a19§7/30" display1
scoreboard players reset "§l§bML §r§a20§7/30" display1
scoreboard players reset "§l§bML §r§e21§7/30" display1
scoreboard players reset "§l§bML §r§e22§7/30" display1
scoreboard players reset "§l§bML §r§e23§7/30" display1
scoreboard players reset "§l§bML §r§e24§7/30" display1
scoreboard players reset "§l§bML §r§e25§7/30" display1
scoreboard players reset "§l§bML §r§e26§7/30" display1
scoreboard players reset "§l§bML §r§e27§7/30" display1
scoreboard players reset "§l§bML §r§e28§7/30" display1
scoreboard players reset "§l§bML §r§e29§7/30" display1
scoreboard players reset "§l§bML §r§630§7/30" display1

## 重置记分板
execute if score progress.level record matches 0 run scoreboard players set "§l§bML §r§70§7/30" display1 7
execute if score progress.level record matches 1 run scoreboard players set "§l§bML §r§b1§7/30" display1 7
execute if score progress.level record matches 2 run scoreboard players set "§l§bML §r§b2§7/30" display1 7
execute if score progress.level record matches 3 run scoreboard players set "§l§bML §r§b3§7/30" display1 7
execute if score progress.level record matches 4 run scoreboard players set "§l§bML §r§b4§7/30" display1 7
execute if score progress.level record matches 5 run scoreboard players set "§l§bML §r§b5§7/30" display1 7
execute if score progress.level record matches 6 run scoreboard players set "§l§bML §r§b6§7/30" display1 7
execute if score progress.level record matches 7 run scoreboard players set "§l§bML §r§b7§7/30" display1 7
execute if score progress.level record matches 8 run scoreboard players set "§l§bML §r§b8§7/30" display1 7
execute if score progress.level record matches 9 run scoreboard players set "§l§bML §r§b9§7/30" display1 7
execute if score progress.level record matches 10 run scoreboard players set "§l§bML §r§b10§7/30" display1 7
execute if score progress.level record matches 11 run scoreboard players set "§l§bML §r§a11§7/30" display1 7
execute if score progress.level record matches 12 run scoreboard players set "§l§bML §r§a12§7/30" display1 7
execute if score progress.level record matches 32 run scoreboard players set "§l§bML §r§a13§7/30" display1 7
execute if score progress.level record matches 14 run scoreboard players set "§l§bML §r§a14§7/30" display1 7
execute if score progress.level record matches 15 run scoreboard players set "§l§bML §r§a15§7/30" display1 7
execute if score progress.level record matches 16 run scoreboard players set "§l§bML §r§a16§7/30" display1 7
execute if score progress.level record matches 17 run scoreboard players set "§l§bML §r§a17§7/30" display1 7
execute if score progress.level record matches 18 run scoreboard players set "§l§bML §r§a18§7/30" display1 7
execute if score progress.level record matches 19 run scoreboard players set "§l§bML §r§a19§7/30" display1 7
execute if score progress.level record matches 20 run scoreboard players set "§l§bML §r§a20§7/30" display1 7
execute if score progress.level record matches 21 run scoreboard players set "§l§bML §r§e21§7/30" display1 7
execute if score progress.level record matches 22 run scoreboard players set "§l§bML §r§e22§7/30" display1 7
execute if score progress.level record matches 23 run scoreboard players set "§l§bML §r§e23§7/30" display1 7
execute if score progress.level record matches 24 run scoreboard players set "§l§bML §r§e24§7/30" display1 7
execute if score progress.level record matches 25 run scoreboard players set "§l§bML §r§e25§7/30" display1 7
execute if score progress.level record matches 26 run scoreboard players set "§l§bML §r§e26§7/30" display1 7
execute if score progress.level record matches 27 run scoreboard players set "§l§bML §r§e27§7/30" display1 7
execute if score progress.level record matches 28 run scoreboard players set "§l§bML §r§e28§7/30" display1 7
execute if score progress.level record matches 29 run scoreboard players set "§l§bML §r§e29§7/30" display1 7
execute if score progress.level record matches 30 run scoreboard players set "§l§bML §r§630§7/30" display1 7
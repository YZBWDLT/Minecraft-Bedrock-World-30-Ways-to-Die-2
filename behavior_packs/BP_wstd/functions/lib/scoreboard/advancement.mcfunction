# ===== 输出为记分板 =====
# 用于将当前的进度数据输出到记分板上

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 输出完成的进度数目，中文为display记分板，英文为display1记分板

# --- 中文 ---
scoreboard players reset "§l§6进度 §r§70§7/30" display
scoreboard players reset "§l§6进度 §r§b1§7/30" display
scoreboard players reset "§l§6进度 §r§b2§7/30" display
scoreboard players reset "§l§6进度 §r§b3§7/30" display
scoreboard players reset "§l§6进度 §r§b4§7/30" display
scoreboard players reset "§l§6进度 §r§b5§7/30" display
scoreboard players reset "§l§6进度 §r§b6§7/30" display
scoreboard players reset "§l§6进度 §r§b7§7/30" display
scoreboard players reset "§l§6进度 §r§b8§7/30" display
scoreboard players reset "§l§6进度 §r§b9§7/30" display
scoreboard players reset "§l§6进度 §r§b10§7/30" display
scoreboard players reset "§l§6进度 §r§a11§7/30" display
scoreboard players reset "§l§6进度 §r§a12§7/30" display
scoreboard players reset "§l§6进度 §r§a13§7/30" display
scoreboard players reset "§l§6进度 §r§a14§7/30" display
scoreboard players reset "§l§6进度 §r§a15§7/30" display
scoreboard players reset "§l§6进度 §r§a16§7/30" display
scoreboard players reset "§l§6进度 §r§a17§7/30" display
scoreboard players reset "§l§6进度 §r§a18§7/30" display
scoreboard players reset "§l§6进度 §r§a19§7/30" display
scoreboard players reset "§l§6进度 §r§a20§7/30" display
scoreboard players reset "§l§6进度 §r§e21§7/30" display
scoreboard players reset "§l§6进度 §r§e22§7/30" display
scoreboard players reset "§l§6进度 §r§e23§7/30" display
scoreboard players reset "§l§6进度 §r§e24§7/30" display
scoreboard players reset "§l§6进度 §r§e25§7/30" display
scoreboard players reset "§l§6进度 §r§e26§7/30" display
scoreboard players reset "§l§6进度 §r§e27§7/30" display
scoreboard players reset "§l§6进度 §r§e28§7/30" display
scoreboard players reset "§l§6进度 §r§e29§7/30" display
scoreboard players reset "§l§6进度 §r§630§7/30" display

execute if score progress.advancement record matches 0 run scoreboard players set "§l§6进度 §r§70§7/30" display 15
execute if score progress.advancement record matches 1 run scoreboard players set "§l§6进度 §r§b1§7/30" display 15
execute if score progress.advancement record matches 2 run scoreboard players set "§l§6进度 §r§b2§7/30" display 15
execute if score progress.advancement record matches 3 run scoreboard players set "§l§6进度 §r§b3§7/30" display 15
execute if score progress.advancement record matches 4 run scoreboard players set "§l§6进度 §r§b4§7/30" display 15
execute if score progress.advancement record matches 5 run scoreboard players set "§l§6进度 §r§b5§7/30" display 15
execute if score progress.advancement record matches 6 run scoreboard players set "§l§6进度 §r§b6§7/30" display 15
execute if score progress.advancement record matches 7 run scoreboard players set "§l§6进度 §r§b7§7/30" display 15
execute if score progress.advancement record matches 8 run scoreboard players set "§l§6进度 §r§b8§7/30" display 15
execute if score progress.advancement record matches 9 run scoreboard players set "§l§6进度 §r§b9§7/30" display 15
execute if score progress.advancement record matches 10 run scoreboard players set "§l§6进度 §r§b10§7/30" display 15
execute if score progress.advancement record matches 11 run scoreboard players set "§l§6进度 §r§a11§7/30" display 15
execute if score progress.advancement record matches 12 run scoreboard players set "§l§6进度 §r§a12§7/30" display 15
execute if score progress.advancement record matches 13 run scoreboard players set "§l§6进度 §r§a13§7/30" display 15
execute if score progress.advancement record matches 14 run scoreboard players set "§l§6进度 §r§a14§7/30" display 15
execute if score progress.advancement record matches 15 run scoreboard players set "§l§6进度 §r§a15§7/30" display 15
execute if score progress.advancement record matches 16 run scoreboard players set "§l§6进度 §r§a16§7/30" display 15
execute if score progress.advancement record matches 17 run scoreboard players set "§l§6进度 §r§a17§7/30" display 15
execute if score progress.advancement record matches 18 run scoreboard players set "§l§6进度 §r§a18§7/30" display 15
execute if score progress.advancement record matches 19 run scoreboard players set "§l§6进度 §r§a19§7/30" display 15
execute if score progress.advancement record matches 20 run scoreboard players set "§l§6进度 §r§a20§7/30" display 15
execute if score progress.advancement record matches 21 run scoreboard players set "§l§6进度 §r§e21§7/30" display 15
execute if score progress.advancement record matches 22 run scoreboard players set "§l§6进度 §r§e22§7/30" display 15
execute if score progress.advancement record matches 23 run scoreboard players set "§l§6进度 §r§e23§7/30" display 15
execute if score progress.advancement record matches 24 run scoreboard players set "§l§6进度 §r§e24§7/30" display 15
execute if score progress.advancement record matches 25 run scoreboard players set "§l§6进度 §r§e25§7/30" display 15
execute if score progress.advancement record matches 26 run scoreboard players set "§l§6进度 §r§e26§7/30" display 15
execute if score progress.advancement record matches 27 run scoreboard players set "§l§6进度 §r§e27§7/30" display 15
execute if score progress.advancement record matches 28 run scoreboard players set "§l§6进度 §r§e28§7/30" display 15
execute if score progress.advancement record matches 29 run scoreboard players set "§l§6进度 §r§e29§7/30" display 15
execute if score progress.advancement record matches 30 run scoreboard players set "§l§6进度 §r§630§7/30" display 15

# --- English ---
scoreboard players reset "§l§6Advs §r§70§7/30" display1
scoreboard players reset "§l§6Advs §r§b1§7/30" display1
scoreboard players reset "§l§6Advs §r§b2§7/30" display1
scoreboard players reset "§l§6Advs §r§b3§7/30" display1
scoreboard players reset "§l§6Advs §r§b4§7/30" display1
scoreboard players reset "§l§6Advs §r§b5§7/30" display1
scoreboard players reset "§l§6Advs §r§b6§7/30" display1
scoreboard players reset "§l§6Advs §r§b7§7/30" display1
scoreboard players reset "§l§6Advs §r§b8§7/30" display1
scoreboard players reset "§l§6Advs §r§b9§7/30" display1
scoreboard players reset "§l§6Advs §r§b10§7/30" display1
scoreboard players reset "§l§6Advs §r§a11§7/30" display1
scoreboard players reset "§l§6Advs §r§a12§7/30" display1
scoreboard players reset "§l§6Advs §r§a13§7/30" display1
scoreboard players reset "§l§6Advs §r§a14§7/30" display1
scoreboard players reset "§l§6Advs §r§a15§7/30" display1
scoreboard players reset "§l§6Advs §r§a16§7/30" display1
scoreboard players reset "§l§6Advs §r§a17§7/30" display1
scoreboard players reset "§l§6Advs §r§a18§7/30" display1
scoreboard players reset "§l§6Advs §r§a19§7/30" display1
scoreboard players reset "§l§6Advs §r§a20§7/30" display1
scoreboard players reset "§l§6Advs §r§e21§7/30" display1
scoreboard players reset "§l§6Advs §r§e22§7/30" display1
scoreboard players reset "§l§6Advs §r§e23§7/30" display1
scoreboard players reset "§l§6Advs §r§e24§7/30" display1
scoreboard players reset "§l§6Advs §r§e25§7/30" display1
scoreboard players reset "§l§6Advs §r§e26§7/30" display1
scoreboard players reset "§l§6Advs §r§e27§7/30" display1
scoreboard players reset "§l§6Advs §r§e28§7/30" display1
scoreboard players reset "§l§6Advs §r§e29§7/30" display1
scoreboard players reset "§l§6Advs §r§630§7/30" display1

execute if score progress.advancement record matches 0 run scoreboard players set "§l§6Advs §r§70§7/30" display1 15
execute if score progress.advancement record matches 1 run scoreboard players set "§l§6Advs §r§b1§7/30" display1 15
execute if score progress.advancement record matches 2 run scoreboard players set "§l§6Advs §r§b2§7/30" display1 15
execute if score progress.advancement record matches 3 run scoreboard players set "§l§6Advs §r§b3§7/30" display1 15
execute if score progress.advancement record matches 4 run scoreboard players set "§l§6Advs §r§b4§7/30" display1 15
execute if score progress.advancement record matches 5 run scoreboard players set "§l§6Advs §r§b5§7/30" display1 15
execute if score progress.advancement record matches 6 run scoreboard players set "§l§6Advs §r§b6§7/30" display1 15
execute if score progress.advancement record matches 7 run scoreboard players set "§l§6Advs §r§b7§7/30" display1 15
execute if score progress.advancement record matches 8 run scoreboard players set "§l§6Advs §r§b8§7/30" display1 15
execute if score progress.advancement record matches 9 run scoreboard players set "§l§6Advs §r§b9§7/30" display1 15
execute if score progress.advancement record matches 10 run scoreboard players set "§l§6Advs §r§b10§7/30" display1 15
execute if score progress.advancement record matches 11 run scoreboard players set "§l§6Advs §r§a11§7/30" display1 15
execute if score progress.advancement record matches 12 run scoreboard players set "§l§6Advs §r§a12§7/30" display1 15
execute if score progress.advancement record matches 13 run scoreboard players set "§l§6Advs §r§a13§7/30" display1 15
execute if score progress.advancement record matches 14 run scoreboard players set "§l§6Advs §r§a14§7/30" display1 15
execute if score progress.advancement record matches 15 run scoreboard players set "§l§6Advs §r§a15§7/30" display1 15
execute if score progress.advancement record matches 16 run scoreboard players set "§l§6Advs §r§a16§7/30" display1 15
execute if score progress.advancement record matches 17 run scoreboard players set "§l§6Advs §r§a17§7/30" display1 15
execute if score progress.advancement record matches 18 run scoreboard players set "§l§6Advs §r§a18§7/30" display1 15
execute if score progress.advancement record matches 19 run scoreboard players set "§l§6Advs §r§a19§7/30" display1 15
execute if score progress.advancement record matches 20 run scoreboard players set "§l§6Advs §r§a20§7/30" display1 15
execute if score progress.advancement record matches 21 run scoreboard players set "§l§6Advs §r§e21§7/30" display1 15
execute if score progress.advancement record matches 22 run scoreboard players set "§l§6Advs §r§e22§7/30" display1 15
execute if score progress.advancement record matches 23 run scoreboard players set "§l§6Advs §r§e23§7/30" display1 15
execute if score progress.advancement record matches 24 run scoreboard players set "§l§6Advs §r§e24§7/30" display1 15
execute if score progress.advancement record matches 25 run scoreboard players set "§l§6Advs §r§e25§7/30" display1 15
execute if score progress.advancement record matches 26 run scoreboard players set "§l§6Advs §r§e26§7/30" display1 15
execute if score progress.advancement record matches 27 run scoreboard players set "§l§6Advs §r§e27§7/30" display1 15
execute if score progress.advancement record matches 28 run scoreboard players set "§l§6Advs §r§e28§7/30" display1 15
execute if score progress.advancement record matches 29 run scoreboard players set "§l§6Advs §r§e29§7/30" display1 15
execute if score progress.advancement record matches 30 run scoreboard players set "§l§6Advs §r§630§7/30" display1 15

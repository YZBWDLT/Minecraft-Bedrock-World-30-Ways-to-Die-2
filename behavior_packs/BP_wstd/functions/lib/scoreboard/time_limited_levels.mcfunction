# ===== 输出为记分板 =====
# 用于将当前的限时数据输出到记分板上

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 输出完成的限时数目，中文为display记分板，英文为display1记分板

# --- 中文 ---
scoreboard players reset "§l§e限时 §r§70§7/5" display
scoreboard players reset "§l§e限时 §r§b1§7/5" display
scoreboard players reset "§l§e限时 §r§b2§7/5" display
scoreboard players reset "§l§e限时 §r§a3§7/5" display
scoreboard players reset "§l§e限时 §r§e4§7/5" display
scoreboard players reset "§l§e限时 §r§65§7/5" display

execute if score progress.timeLimited record matches -1..0 run scoreboard players set "§l§e限时 §r§70§7/5" display 8
execute if score progress.timeLimited record matches 1 run scoreboard players set "§l§e限时 §r§b1§7/5" display 8
execute if score progress.timeLimited record matches 2 run scoreboard players set "§l§e限时 §r§b2§7/5" display 8
execute if score progress.timeLimited record matches 3 run scoreboard players set "§l§e限时 §r§a3§7/5" display 8
execute if score progress.timeLimited record matches 4 run scoreboard players set "§l§e限时 §r§e4§7/5" display 8
execute if score progress.timeLimited record matches 5 run scoreboard players set "§l§e限时 §r§65§7/5" display 8

# --- English ---
scoreboard players reset "§l§eTL §r§70§7/5" display1
scoreboard players reset "§l§eTL §r§b1§7/5" display1
scoreboard players reset "§l§eTL §r§b2§7/5" display1
scoreboard players reset "§l§eTL §r§a3§7/5" display1
scoreboard players reset "§l§eTL §r§e4§7/5" display1
scoreboard players reset "§l§eTL §r§65§7/5" display1

execute if score progress.timeLimited record matches -1..0 run scoreboard players set "§l§eTL §r§70§7/5" display1 8
execute if score progress.timeLimited record matches 1 run scoreboard players set "§l§eTL §r§b1§7/5" display1 8
execute if score progress.timeLimited record matches 2 run scoreboard players set "§l§eTL §r§b2§7/5" display1 8
execute if score progress.timeLimited record matches 3 run scoreboard players set "§l§eTL §r§a3§7/5" display1 8
execute if score progress.timeLimited record matches 4 run scoreboard players set "§l§eTL §r§e4§7/5" display1 8
execute if score progress.timeLimited record matches 5 run scoreboard players set "§l§eTL §r§65§7/5" display1 8
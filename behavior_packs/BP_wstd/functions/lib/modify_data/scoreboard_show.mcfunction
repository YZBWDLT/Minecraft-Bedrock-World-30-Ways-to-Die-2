# ===== 显示所有记分板数据 =====
# 用于显示所有记分板数据。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 输出所有记分板数据

# --- 中文 ---
scoreboard players set "§l作者 §r§e一只卑微的量筒" display 1
scoreboard players set "§l出品 §r§b极筑工坊" display 2
scoreboard players set "§l版本 §r§b2.4" display 3
scoreboard players set "=============" display 5
scoreboard players set "§l     关卡进度" display 6
scoreboard players set "§f=============" display 10
scoreboard players set "§l      统计项" display 11

# --- English ---
scoreboard players set "§lAuthor §r§eYZBWDLT" display1 1
scoreboard players set "§lBy §r§bAB Workshop" display1 2
scoreboard players set "§lVer §r§b2.4" display1 3
scoreboard players set "=============" display1 5
scoreboard players set "§l    Levels" display1 6
scoreboard players set "§f=============" display1 10
scoreboard players set "§l   Statistics" display1 11

# --- 显示记分板出来 ---
# 根据语言的不同而显示不同内容
execute if score language data matches 0 run scoreboard objectives setdisplay sidebar display ascending
execute if score language data matches 1 run scoreboard objectives setdisplay sidebar display1 ascending

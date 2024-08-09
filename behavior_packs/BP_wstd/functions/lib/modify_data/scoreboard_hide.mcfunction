# ===== 隐藏部分记分板数据 =====
# 用于隐藏部分记分板数据。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 输出部分记分板数据

# --- 中文 ---
scoreboard players reset "§l作者 §r§e一只卑微的量筒" display
scoreboard players reset "§l出品 §r§b极筑工坊" display
scoreboard players reset "§l版本 §r§b2.4" display
scoreboard players reset "=============" display
scoreboard players reset "§l     关卡进度" display
scoreboard players reset "§f=============" display
scoreboard players reset "§l      统计项" display

# --- English ---
scoreboard players reset "§lAuthor §r§eYZBWDLT" display1
scoreboard players reset "§lBy §r§bAB Workshop" display1
scoreboard players reset "§lVer §r§b2.4" display1
scoreboard players reset "=============" display1
scoreboard players reset "§l    Levels" display1
scoreboard players reset "§f=============" display1
scoreboard players reset "§l   Statistics" display1

# --- 显示记分板出来 ---
# 根据语言的不同而显示不同内容
execute if score language data matches 0 run scoreboard objectives setdisplay sidebar display ascending
execute if score language data matches 1 run scoreboard objectives setdisplay sidebar display1 ascending

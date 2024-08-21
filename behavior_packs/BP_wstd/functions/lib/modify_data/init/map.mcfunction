# ===== 地图本身设定 =====
# 用于重置地图本身

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 重置地图结构到最初状态

# --- 大厅logo ---
structure load system:logo 47 6 21

# --- 开始屋与结束屋的大门 ---
function lib/modify_data/gates/start_room
function lib/modify_data/gates/end_room

# --- 结束屋的地板 ---
fill -44 8 29 -48 8 25 iron_block

# --- 结束屋的信标 ---
setblock -47 9 28 glass
setblock -45 9 28 glass
setblock -45 9 26 glass
setblock -47 9 26 glass

# --- 激活起始屋 ---
fill 28 9 27 28 11 27 quartz_block ["chisel_type"="lines","pillar_axis"="y"]
setblock 29 10 27 stone_button ["facing_direction"=5]

# --- 起始屋的彩蛋 ---
fill 29 10 33 27 12 33 quartz_block ["chisel_type"="lines","pillar_axis"="y"]
fill 28 10 36 28 11 36 quartz_block ["chisel_type"="lines","pillar_axis"="y"]
setblock 28 11 35 stone_button ["facing_direction"=2]

# --- 结束屋的隐藏按钮 ---
fill -47 10 33 -45 12 33 quartz_block ["chisel_type"="lines","pillar_axis"="y"]
fill -46 10 36 -46 11 36 quartz_block ["chisel_type"="lines","pillar_axis"="y"]
setblock -46 11 35 stone_button ["facing_direction"=2]

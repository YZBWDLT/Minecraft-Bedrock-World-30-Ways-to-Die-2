# ===== 大厅logo =====
structure load logo 47 6 21

# ===== 开始屋与结束屋的大门 =====
function halls/starting_room/gate
function halls/end/mainline_completed/gate

# ===== 结束屋的地板 =====
fill -44 8 29 -48 8 25 iron_block

# ===== 结束屋的信标 =====
setblock -47 9 28 glass
setblock -45 9 28 glass
setblock -45 9 26 glass
setblock -47 9 26 glass

# ===== 激活起始屋 =====
fill 28 9 27 28 11 27 quartz_block ["chisel_type":"lines","pillar_axis":"y"]
setblock 29 10 27 stone_button ["facing_direction":5]

# ===== 起始屋的彩蛋 =====
fill 29 10 33 27 12 33 quartz_block ["chisel_type":"lines","pillar_axis":"y"]
fill 28 10 36 28 11 36 quartz_block ["chisel_type":"lines","pillar_axis":"y"]
setblock 28 11 35 stone_button ["facing_direction":2]

# ===== 结束屋的隐藏按钮 =====
fill -47 10 33 -45 12 33 quartz_block ["chisel_type":"lines","pillar_axis":"y"]
fill -46 10 36 -46 11 36 quartz_block ["chisel_type":"lines","pillar_axis":"y"]
setblock -46 11 35 stone_button ["facing_direction":2]

# ===== 统计屋重置 =====
## 提示部分
clone -107 12 34 -98 14 34 -107 19 34
## 攻略部分
clone -107 12 26 -98 14 26 -107 19 26
## 跳过部分
clone -109 12 29 -109 14 31 -109 19 29
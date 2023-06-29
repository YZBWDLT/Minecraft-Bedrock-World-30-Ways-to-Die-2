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

# ===== 进度屋重置 =====
## 主线部分
clone -98 8 19 -98 8 19 -98 20 19
clone -99 14 19 -99 14 19 -99 20 19
clone -103 11 19 -103 11 19 -100 18 19
clone -103 11 19 -103 11 19 -100 20 19
clone -103 11 19 -103 11 19 -100 21 19
clone -103 11 19 -103 11 19 -100 22 19
clone -103 11 19 -103 11 19 -101 18 19
clone -103 11 19 -103 11 19 -101 20 19
clone -103 11 19 -103 11 19 -102 18 19
clone -103 11 19 -103 11 19 -102 20 19
clone -103 11 19 -103 11 19 -102 21 19
clone -101 13 19 -101 13 19 -101 19 19
## 大师部分
clone -105 8 19 -105 8 19 -105 20 19
clone -104 11 19 -104 11 19 -106 22 19
clone -104 11 19 -104 11 19 -106 21 19
clone -104 11 19 -104 11 19 -106 20 19
clone -105 11 19 -105 11 19 -106 19 19
clone -106 11 19 -106 11 19 -106 18 19
clone -103 11 19 -103 11 19 -107 18 19
clone -103 11 19 -103 11 19 -107 20 19
clone -103 11 19 -103 11 19 -107 22 19
clone -103 11 19 -103 11 19 -108 22 19
clone -109 14 19 -109 14 19 -109 20 19
## 杂项部分
clone -108 8 11 -108 8 11 -108 20 11
clone -107 14 11 -107 14 11 -107 20 11
clone -103 11 11 -103 11 11 -107 19 11
clone -103 11 11 -103 11 11 -106 20 11
clone -103 11 11 -103 11 11 -106 21 11
clone -103 11 11 -103 11 11 -106 22 11
## 彩蛋部分
clone -101 8 11 -101 8 11 -101 20 11
clone -103 11 11 -103 11 11 -100 18 11
clone -103 11 11 -103 11 11 -100 19 11
clone -100 14 11 -100 14 11 -100 20 11
clone -103 11 11 -103 11 11 -100 21 11
clone -103 11 11 -103 11 11 -99 20 11
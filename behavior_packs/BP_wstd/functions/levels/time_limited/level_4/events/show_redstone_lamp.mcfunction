# ===== 红石灯显示 =====
# 显示玩家的分值

# --- 第1个红石灯 ---
# 当得到0分时熄灭，1~5分时亮起，以下同理
execute if score timeLimited4.totalScore data matches 0 run setblock -59 27 -93 air
execute if score timeLimited4.totalScore data matches 1..5 run setblock -59 27 -93 redstone_block

# --- 第2个红石灯 ---
execute if score timeLimited4.totalScore data matches 0..1 run setblock -59 27 -94 air
execute if score timeLimited4.totalScore data matches 2..5 run setblock -59 27 -94 redstone_block

# --- 第3个红石灯 ---
execute if score timeLimited4.totalScore data matches 0..2 run setblock -59 27 -95 air
execute if score timeLimited4.totalScore data matches 3..5 run setblock -59 27 -95 redstone_block

# --- 第4个红石灯 ---
execute if score timeLimited4.totalScore data matches 0..3 run setblock -59 27 -96 air
execute if score timeLimited4.totalScore data matches 4..5 run setblock -59 27 -96 redstone_block

# --- 第5个红石灯 ---
execute if score timeLimited4.totalScore data matches 0..4 run setblock -59 27 -97 air
execute if score timeLimited4.totalScore data matches 5 run setblock -59 27 -97 redstone_block

# ===== 红石灯显示 =====
# 显示玩家的分值

# --- 第1个红石灯 ---
# 当得到0分时熄灭，1~5分时亮起，以下同理
execute if score timeLimited5.totalScore data matches 0 run setblock -21 23 -98 air
execute if score timeLimited5.totalScore data matches 1..5 run setblock -21 23 -98 redstone_block

# --- 第2个红石灯 ---
execute if score timeLimited5.totalScore data matches 0..1 run setblock -21 23 -99 air
execute if score timeLimited5.totalScore data matches 2..5 run setblock -21 23 -99 redstone_block

# --- 第3个红石灯 ---
execute if score timeLimited5.totalScore data matches 0..2 run setblock -21 23 -100 air
execute if score timeLimited5.totalScore data matches 3..5 run setblock -21 23 -100 redstone_block

# --- 第4个红石灯 ---
execute if score timeLimited5.totalScore data matches 0..3 run setblock -21 23 -101 air
execute if score timeLimited5.totalScore data matches 4..5 run setblock -21 23 -101 redstone_block

# --- 第5个红石灯 ---
execute if score timeLimited5.totalScore data matches 0..4 run setblock -21 23 -102 air
execute if score timeLimited5.totalScore data matches 5 run setblock -21 23 -102 redstone_block

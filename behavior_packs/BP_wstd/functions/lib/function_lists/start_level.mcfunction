# ===== 函数列表 | 开始游戏函数 =====
# 列出该列表是为了在某些情况下可以降低命令的同时执行数，以进行优化。
# 该列表链接到所有关卡或大厅的start.mcfunction函数。（部分情况将直接执行一条命令）
#<!> 注意：该命令的执行者需为玩家，否则会导致第10关无法正常运行

# -5 | 烟花秀设置 | 重置发射器
execute if score level data matches -5 run function halls/settings/firework/events/reset_dispenser

# 1~32 | 主线关卡
execute if score level data matches 1 run function levels/mainline/level_1/start
execute if score level data matches 2 run function levels/mainline/level_2/start
execute if score level data matches 3 run function levels/mainline/level_3/start
execute if score level data matches 4 run function levels/mainline/level_4/start
execute if score level data matches 5 run function levels/mainline/level_5/start
execute if score level data matches 6 run function levels/mainline/level_6/start
execute if score level data matches 7 run function levels/mainline/level_7/start
execute if score level data matches 8 run function levels/mainline/level_8/start
execute if score level data matches 9 run function levels/mainline/level_9/start
execute if score level data matches 10 if score @s dimension matches 1 run function levels/mainline/level_10/start
execute if score level data matches 11 run function levels/mainline/level_11/start
execute if score level data matches 12 run function levels/mainline/level_12/start
execute if score level data matches 13 run function levels/mainline/level_13/part_1/start
execute if score level data matches 31 run function levels/mainline/level_13/part_2/start
execute if score level data matches 32 run function levels/mainline/level_13/part_3/start
execute if score level data matches 14 run function levels/mainline/level_14/start
execute if score level data matches 15 run function levels/mainline/level_15/start
execute if score level data matches 16 run function levels/mainline/level_16/start
execute if score level data matches 17 run function levels/mainline/level_17/start
execute if score level data matches 18 run function levels/mainline/level_18/start
execute if score level data matches 19 run function levels/mainline/level_19/start
execute if score level data matches 20 run function levels/mainline/level_20/start
execute if score level data matches 21 run function levels/mainline/level_21/start
execute if score level data matches 22 run function levels/mainline/level_22/start
execute if score level data matches 23 run function levels/mainline/level_23/start
execute if score level data matches 24 run function levels/mainline/level_24/start
execute if score level data matches 25 run function levels/mainline/level_25/start
execute if score level data matches 26 run function levels/mainline/level_26/start
execute if score level data matches 27 run function levels/mainline/level_27/start
execute if score level data matches 28 run function levels/mainline/level_28/start
execute if score level data matches 29 run function levels/mainline/level_29/start
execute if score level data matches 30 run function levels/mainline/level_30/start

# 33~35 | 隐藏关卡
execute if score level data matches 33 run function levels/hided/level_1/start
execute if score level data matches 34 run function levels/hided/level_2/start
execute if score level data matches 35 run function levels/hided/level_3/start

# 36~40 | 限时关卡
execute if score level data matches 36 run function levels/time_limited/level_1/start
execute if score level data matches 37 run function levels/time_limited/level_2/start
execute if score level data matches 38 run function levels/time_limited/level_3/start
execute if score level data matches 39 run function levels/time_limited/level_4/start
execute if score level data matches 40 run function levels/time_limited/level_5/start

# 41~50 | 彩蛋关卡
execute if score level data matches 41 run function levels/easter_egg/level_1/start
execute if score level data matches 42 run function levels/easter_egg/level_2/start
execute if score level data matches 43 run function levels/easter_egg/level_3/start
execute if score level data matches 44 run function levels/easter_egg/level_4/start
execute if score level data matches 45 run function levels/easter_egg/level_5/start
execute if score level data matches 46 run function levels/easter_egg/level_6/start
execute if score level data matches 47 run function levels/easter_egg/level_7/start
execute if score level data matches 48 run function levels/easter_egg/level_8/start
execute if score level data matches 49 run function levels/easter_egg/level_9/start
execute if score level data matches 50 run function levels/easter_egg/level_10/start

# 51~60 | 自定义关卡 - 游戏模式
execute if score level data matches 51 if score diyLevels.isEditMode data matches 0 run function levels/diy_levels/start_gaming/level_1
execute if score level data matches 52 if score diyLevels.isEditMode data matches 0 run function levels/diy_levels/start_gaming/level_2
execute if score level data matches 53 if score diyLevels.isEditMode data matches 0 run function levels/diy_levels/start_gaming/level_3
execute if score level data matches 54 if score diyLevels.isEditMode data matches 0 run function levels/diy_levels/start_gaming/level_4
execute if score level data matches 55 if score diyLevels.isEditMode data matches 0 run function levels/diy_levels/start_gaming/level_5
execute if score level data matches 56 if score diyLevels.isEditMode data matches 0 run function levels/diy_levels/start_gaming/level_6
execute if score level data matches 57 if score diyLevels.isEditMode data matches 0 run function levels/diy_levels/start_gaming/level_7
execute if score level data matches 58 if score diyLevels.isEditMode data matches 0 run function levels/diy_levels/start_gaming/level_8
execute if score level data matches 59 if score diyLevels.isEditMode data matches 0 run function levels/diy_levels/start_gaming/level_9
execute if score level data matches 60 if score diyLevels.isEditMode data matches 0 run function levels/diy_levels/start_gaming/level_10


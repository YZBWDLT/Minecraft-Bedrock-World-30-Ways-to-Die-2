# ===== 函数列表 | 攻略函数 =====
# 列出该列表是为了在某些情况下可以降低命令的同时执行数，以进行优化。
# 该列表链接到所有关卡或大厅的strategy.mcfunction函数。

## 教程关卡
execute if score level data matches -18 run function levels/tutorial/aux_func/strategy

## 主线关卡
execute if score level data matches 1 run function levels/mainline/level_1/aux_func/strategy
execute if score level data matches 2 run function levels/mainline/level_2/aux_func/strategy
execute if score level data matches 3 run function levels/mainline/level_3/aux_func/strategy
execute if score level data matches 4 run function levels/mainline/level_4/aux_func/strategy
execute if score level data matches 5 run function levels/mainline/level_5/aux_func/strategy
execute if score level data matches 6 run function levels/mainline/level_6/aux_func/strategy
execute if score level data matches 7 run function levels/mainline/level_7/aux_func/strategy
execute if score level data matches 8 run function levels/mainline/level_8/aux_func/strategy
execute if score level data matches 9 run function levels/mainline/level_9/aux_func/strategy
execute if score level data matches 10 run function levels/mainline/level_10/aux_func/strategy
execute if score level data matches 11 run function levels/mainline/level_11/aux_func/strategy
execute if score level data matches 12 run function levels/mainline/level_12/aux_func/strategy
execute if score level data matches 13 run function levels/mainline/level_13/part_1/aux_func/strategy
execute if score level data matches 14 run function levels/mainline/level_14/aux_func/strategy
execute if score level data matches 15 run function levels/mainline/level_15/aux_func/strategy
execute if score level data matches 16 run function levels/mainline/level_16/aux_func/strategy
execute if score level data matches 17 run function levels/mainline/level_17/aux_func/strategy
execute if score level data matches 18 run function levels/mainline/level_18/aux_func/strategy
execute if score level data matches 19 run function levels/mainline/level_19/aux_func/strategy

execute if score level data matches 23 run function levels/mainline/level_23/aux_func/strategy
execute if score level data matches 24 run function levels/mainline/level_24/aux_func/strategy
execute if score level data matches 25 run function levels/mainline/level_25/aux_func/strategy
execute if score level data matches 26 run function levels/mainline/level_26/aux_func/strategy
execute if score level data matches 27 run function levels/mainline/level_27/aux_func/strategy
execute if score level data matches 28 run function levels/mainline/level_28/aux_func/strategy
execute if score level data matches 29 run function levels/mainline/level_29/aux_func/strategy

## 限时关卡
execute if score level data matches 36 run function levels/time_limited/level_1/aux_func/strategy
execute if score level data matches 37 run function levels/time_limited/level_2/aux_func/strategy
execute if score level data matches 38 run function levels/time_limited/level_3/aux_func/strategy
execute if score level data matches 39 run function levels/time_limited/level_4/aux_func/strategy
execute if score level data matches 40 run function levels/time_limited/level_5/aux_func/strategy

## 彩蛋关卡
execute if score level data matches 41 run function levels/easter_egg/level_1/aux_func/strategy
execute if score level data matches 42 run function levels/easter_egg/level_2/aux_func/strategy
execute if score level data matches 43 run function levels/easter_egg/level_3/aux_func/strategy
execute if score level data matches 44 run function levels/easter_egg/level_4/aux_func/strategy
execute if score level data matches 45 run function levels/easter_egg/level_5/aux_func/strategy
execute if score level data matches 46 run function levels/easter_egg/level_6/aux_func/strategy
execute if score level data matches 47 run function levels/easter_egg/level_7/aux_func/strategy
execute if score level data matches 48 run function levels/easter_egg/level_8/aux_func/strategy
execute if score level data matches 49 run function levels/easter_egg/level_9/aux_func/strategy
execute if score level data matches 50 run function levels/easter_egg/level_10/aux_func/strategy

# 51~60 | 自定义关卡 - 游戏模式
execute if score level data matches 51..60 if score diyLevels.isEditMode data matches 0 run setblock -103 2 -15 redstone_block

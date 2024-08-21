# ===== 函数列表 | 跳过函数 =====
# 列出该列表是为了在某些情况下可以降低命令的同时执行数，以进行优化。
# 该列表链接到所有关卡或大厅的skip.mcfunction函数。

## 教程关卡
execute if score level data matches -18 run function levels/tutorial/aux_func/skip

## 主线关卡
execute if score level data matches 13 run function levels/mainline/level_13/part_1/aux_func/skip
execute if score level data matches 31 run function levels/mainline/level_13/part_2/aux_func/skip
execute if score level data matches 32 run function levels/mainline/level_13/part_3/aux_func/skip
execute if score level data matches 20 run function levels/mainline/level_20/aux_func/skip
execute if score level data matches 21 run function levels/mainline/level_21/aux_func/skip
execute if score level data matches 22 run function levels/mainline/level_22/aux_func/skip
execute if score level data matches 30 run function levels/mainline/level_30/aux_func/skip

## 限时关卡
execute if score level data matches 36 run function levels/time_limited/level_1/aux_func/skip
execute if score level data matches 39 run function levels/time_limited/level_4/aux_func/skip
execute if score level data matches 40 run function levels/time_limited/level_5/aux_func/skip

# 51~60 | 自定义关卡 - 游戏模式
execute if score level data matches 51..60 if score diyLevels.isEditMode data matches 0 run setblock -103 2 -16 redstone_block

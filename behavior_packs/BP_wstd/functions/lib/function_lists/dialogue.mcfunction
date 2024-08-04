# ===== 函数列表 | 剧情线函数 =====
# 列出该列表是为了在某些情况下可以降低命令的同时执行数，以进行优化。
# 该列表链接到所有关卡或大厅的dialogue.mcfunction函数。

# -19 | 开幕时
execute if score level data matches -19 run function halls/open/stage_2/dialogue

# -18 | 教程关卡的教程
execute if score level data matches -18 run function levels/tutorial/dialogue

## -13 | 第一次结束主线时 | 主线关卡完成前 record.progress.mapStage = 0
execute if score level data matches -13 if score progress.mapStage record matches 0 run function halls/end/stage_1/dialogue

## -13 | 第一次结束地图时 | 主线关卡完成后 record.progress.mapStage = 1~2
execute if score level data matches -13 if score progress.mapStage record matches 1..2 run function halls/end/stage_2/dialogue

# 10 | 当玩家合成出粉床后出现的彩蛋对话
execute if score level data matches 10 run function levels/mainline/level_10/dialogue

# 13(2) | 当玩家使用末影珍珠后出现的对话
execute if score level data matches 31 run function levels/mainline/level_13/part_2/dialogue

# 30 | 关卡锁视角对话
execute if score level data matches 30 run function levels/mainline/level_30/dialogue

# 41 | 树发臭
execute if score level data matches 41 run function levels/easter_egg/level_1/dialogue

# 44 | 作者无能狂怒
execute if score level data matches 44 run function levels/easter_egg/level_4/dialogue

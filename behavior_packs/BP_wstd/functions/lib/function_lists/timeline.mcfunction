# ===== 函数列表 | 时间线函数 =====
# 列出该列表是为了在某些情况下可以降低命令的同时执行数，以进行优化。
# 该列表链接到所有关卡或大厅的timeline.mcfunction函数。

## -20 | 开始屋
execute if score level data matches -20 run function halls/open/stage_1/timeline

## -19 | 开幕时
execute if score level data matches -19 run function halls/open/stage_2/timeline

## -18 | 教程关卡
execute if score level data matches -18 run function levels/tutorial/timeline

## -16 | 选择难度时
execute if score level data matches -16 run function halls/open/stage_4/timeline

## -14 | 烟花教程
execute if score level data matches -14 run function halls/record/firework/timeline

## -13 | 第一次结束主线时 | 主线关卡完成前 record.progress.mapStage = 0
execute if score level data matches -13 if score progress.mapStage record matches 0 run function halls/end/stage_1/timeline

## -13 | 第一次结束地图时 | 主线关卡完成后 record.progress.mapStage = 1~2
execute if score level data matches -13 if score progress.mapStage record matches 1..2 run function halls/end/stage_2/timeline

## -10 | 设置中心相关时间线
execute if score level data matches -10 run function halls/settings/main/timeline

## -9 | 关于本地图相关时间线
execute if score level data matches -9 run function halls/settings/about/timeline

## -8 | 浏览地图相关时间线
execute if score level data matches -8 run function halls/settings/explore_map/timeline

## -7 | 关于本地图相关时间线
execute if score level data matches -7 run function halls/settings/question_and_answer/timeline

## -6 | 难度与语言设置相关时间线
execute if score level data matches -6 run function halls/settings/diff_and_lang/timeline

## -5 | 烟花秀设置相关时间线
execute if score level data matches -5 run function halls/settings/firework/timeline

## -4 | 高级设置相关时间线
execute if score level data matches -4 run function halls/settings/advanced/timeline

## -3 | 限时大厅相关时间线
execute if score level data matches -3 run function halls/hub/time_limited/timeline

## -2 | 彩蛋大厅相关时间线
execute if score level data matches -2 run function halls/hub/easter_egg/timeline

## -1 | DIY大厅相关时间线
execute if score level data matches -1 run function halls/hub/diy/timeline

## 0 | 大厅相关时间线
execute if score level data matches 0 run function halls/hub/main/timeline

## 1~32 | 主线关卡
execute if score level data matches 7 run function levels/mainline/level_7/timeline
execute if score level data matches 8 run function levels/mainline/level_8/timeline
execute if score level data matches 9 run function levels/mainline/level_9/timeline
execute if score level data matches 10 run function levels/mainline/level_10/timeline
execute if score level data matches 11 run function levels/mainline/level_11/timeline
execute if score level data matches 13 run function levels/mainline/level_13/part_1/timeline
execute if score level data matches 17 run function levels/mainline/level_17/timeline
execute if score level data matches 18 run function levels/mainline/level_18/timeline
execute if score level data matches 20 run function levels/mainline/level_20/timeline
execute if score level data matches 21 run function levels/mainline/level_21/timeline
execute if score level data matches 22 run function levels/mainline/level_22/timeline
execute if score level data matches 24 run function levels/mainline/level_24/timeline
execute if score level data matches 25 run function levels/mainline/level_25/timeline
execute if score level data matches 26 run function levels/mainline/level_26/timeline
execute if score level data matches 30 run function levels/mainline/level_30/timeline
execute if score level data matches 31 run function levels/mainline/level_13/part_2/timeline
execute if score level data matches 32 run function levels/mainline/level_13/part_3/timeline

## 34~35 | 隐藏关卡
execute if score level data matches 34 run function levels/hided/level_2/timeline
execute if score level data matches 35 run function levels/hided/level_3/timeline

## 36~40 | 限时关卡
execute if score level data matches 36 run function levels/time_limited/level_1/timeline
execute if score level data matches 37 run function levels/time_limited/level_2/timeline
execute if score level data matches 38 run function levels/time_limited/level_3/timeline
execute if score level data matches 39 run function levels/time_limited/level_4/timeline
execute if score level data matches 40 run function levels/time_limited/level_5/timeline

## 41~50 | 彩蛋关卡
execute if score level data matches 41 run function levels/easter_egg/level_1/timeline
execute if score level data matches 42 run function levels/easter_egg/level_2/timeline
execute if score level data matches 43 run function levels/easter_egg/level_3/timeline
execute if score level data matches 44 run function levels/easter_egg/level_4/timeline
execute if score level data matches 45 run function levels/easter_egg/level_5/timeline
execute if score level data matches 46 run function levels/easter_egg/level_6/timeline
execute if score level data matches 47 run function levels/easter_egg/level_7/timeline
execute if score level data matches 48 run function levels/easter_egg/level_8/timeline
execute if score level data matches 50 run function levels/easter_egg/level_10/timeline

## 51^60 | 自定义关卡
execute if score level data matches 51..60 run function levels/diy_levels/timeline

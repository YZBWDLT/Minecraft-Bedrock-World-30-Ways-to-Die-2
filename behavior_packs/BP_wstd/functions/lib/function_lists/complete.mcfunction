# ===== 函数列表 | 关卡完成函数 =====
# 列出该列表是为了在某些情况下可以降低命令的同时执行数，以进行优化。
# 该列表链接到所有关卡或大厅的complete.mcfunction函数。（部分情况将直接执行一条命令）

## -20~-19 | 开始屋 | 死亡后回到开始屋
execute if score level data matches -20..-19 run tp @s 30 9 27

## -18~-16 | 教程关卡与初步地图设置 | 死亡后回到教程关卡
execute if score level data matches -18..-16 run tp @s 45 21 -25

## -15 | 下界异常情况 | 死亡后改关卡ID为0
execute if score level data matches -15 run scoreboard players set @e[name=level] backend 0

## -14~-4 | 其它大厅关卡 | 死亡后回到大厅
execute if score level data matches -14..-4 run function halls/hub/main/start

## -3 | 限时大厅 | 死亡后回到限时大厅
execute if score level data matches -3 run function halls/hub/time_limited/start

## -2 | 彩蛋大厅 | 死亡后回到彩蛋大厅
execute if score level data matches -2 run function halls/hub/easter_egg/start

## -1 | DIY大厅 | 死亡后回到DIY大厅
execute if score level data matches -1 run function halls/hub/diy/start

## 0 | 主大厅 | 死亡后回到大厅 
execute if score level data matches -0 run function halls/hub/main/start

## 1~32 | 主线关卡 | 死亡后触发通关函数
execute if score level data matches 1 run function levels/mainline/level_1/complete
execute if score level data matches 2 run function levels/mainline/level_2/complete
execute if score level data matches 3 run function levels/mainline/level_3/complete
execute if score level data matches 4 run function levels/mainline/level_4/complete
execute if score level data matches 5 run function levels/mainline/level_5/complete
execute if score level data matches 6 run function levels/mainline/level_6/complete
execute if score level data matches 7 run function levels/mainline/level_7/complete
execute if score level data matches 8 run function levels/mainline/level_8/complete
execute if score level data matches 9 run function levels/mainline/level_9/complete
execute if score level data matches 10 run function levels/mainline/level_10/complete
execute if score level data matches 11 run function levels/mainline/level_11/complete
execute if score level data matches 12 run function levels/mainline/level_12/complete

### 为防止第13关连续执行3个函数，需要将32 31 13倒着写
execute if score level data matches 32 run function levels/mainline/level_13/part_3/complete
execute if score level data matches 31 run function levels/mainline/level_13/part_2/complete
execute if score level data matches 13 run function levels/mainline/level_13/part_1/complete

execute if score level data matches 14 run function levels/mainline/level_14/complete
execute if score level data matches 15 run function levels/mainline/level_15/complete
execute if score level data matches 16 run function levels/mainline/level_16/complete
execute if score level data matches 17 run function levels/mainline/level_17/complete
execute if score level data matches 18 run function levels/mainline/level_18/complete
execute if score level data matches 19 run function levels/mainline/level_19/complete
execute if score level data matches 20 run function levels/mainline/level_20/complete
execute if score level data matches 21 run function levels/mainline/level_21/complete
execute if score level data matches 22 run function levels/mainline/level_22/complete
execute if score level data matches 23 run function levels/mainline/level_23/complete
execute if score level data matches 24 run function levels/mainline/level_24/complete
execute if score level data matches 25 run function levels/mainline/level_25/complete
execute if score level data matches 26 run function levels/mainline/level_26/complete
execute if score level data matches 27 run function levels/mainline/level_27/complete
execute if score level data matches 28 run function levels/mainline/level_28/complete
execute if score level data matches 29 run function levels/mainline/level_29/complete
execute if score level data matches 30 run function levels/mainline/level_30/complete

## 33~35 | 隐藏关卡 | 死亡后回到大厅
execute if score level data matches 33 run function levels/hided/level_1/complete
execute if score level data matches 34 run function levels/hided/level_2/complete
execute if score level data matches 35 run function levels/hided/level_3/complete

## 36~40 | 限时关卡 | 死亡后触发通关函数
execute if score level data matches 36 run function levels/time_limited/level_1/complete
execute if score level data matches 37 run function levels/time_limited/level_2/complete
execute if score level data matches 38 run function levels/time_limited/level_3/complete
execute if score level data matches 39 run function levels/time_limited/level_4/complete
execute if score level data matches 40 run function levels/time_limited/level_5/complete

## 41~50 | 彩蛋关卡 | 死亡后触发通关函数
execute if score level data matches 41 run function levels/easter_egg/level_1/complete
execute if score level data matches 42 run function levels/easter_egg/level_2/complete
execute if score level data matches 43 run function levels/easter_egg/level_3/complete
execute if score level data matches 44 run function levels/easter_egg/level_4/complete
execute if score level data matches 45 run function levels/easter_egg/level_5/complete
execute if score level data matches 46 run function levels/easter_egg/level_6/complete
execute if score level data matches 47 run function levels/easter_egg/level_7/complete
execute if score level data matches 48 run function levels/easter_egg/level_8/complete
execute if score level data matches 49 run function levels/easter_egg/level_9/complete
execute if score level data matches 50 run function levels/easter_egg/level_10/complete

## 51~60 | 自定义关卡 | 死亡后触发命令方块
execute if score level data matches 51..60 run setblock -103 2 -17 redstone_block

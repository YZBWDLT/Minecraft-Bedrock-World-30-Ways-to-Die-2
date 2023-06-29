# 退出功能控制器

## -14 | 烟花教程
execute @e[name=level,scores={backend=-14}] ~~~ function halls/main_hall/start_level

## 1~32 | 主线关卡
execute @e[name=level,scores={backend=1}] ~~~ function levels/level_1/quit_level
execute @e[name=level,scores={backend=2}] ~~~ function levels/level_2/quit_level
execute @e[name=level,scores={backend=3}] ~~~ function levels/level_3/quit_level
execute @e[name=level,scores={backend=4}] ~~~ function levels/level_4/quit_level
execute @e[name=level,scores={backend=5}] ~~~ function levels/level_5/quit_level
execute @e[name=level,scores={backend=6}] ~~~ function levels/level_6/quit_level
execute @e[name=level,scores={backend=7}] ~~~ function levels/level_7/quit_level
execute @e[name=level,scores={backend=8}] ~~~ function levels/level_8/quit_level
execute @e[name=level,scores={backend=9}] ~~~ function levels/level_9/quit_level
execute @e[name=level,scores={backend=10}] ~~~ function levels/level_10/quit_level
execute @e[name=level,scores={backend=11}] ~~~ function levels/level_11/quit_level
execute @e[name=level,scores={backend=12}] ~~~ function levels/level_12/quit_level
execute @e[name=level,scores={backend=13}] ~~~ function levels/level_13/part_1/quit_level
execute @e[name=level,scores={backend=14}] ~~~ function levels/level_14/quit_level
execute @e[name=level,scores={backend=15}] ~~~ function levels/level_15/quit_level
execute @e[name=level,scores={backend=16}] ~~~ function levels/level_16/quit_level
execute @e[name=level,scores={backend=17}] ~~~ function levels/level_17/quit_level
execute @e[name=level,scores={backend=18}] ~~~ function levels/level_18/quit_level
execute @e[name=level,scores={backend=19}] ~~~ function levels/level_19/quit_level
execute @e[name=level,scores={backend=20}] ~~~ function levels/level_20/quit_level
execute @e[name=level,scores={backend=21}] ~~~ function levels/level_21/quit_level
execute @e[name=level,scores={backend=22}] ~~~ function levels/level_22/quit_level
execute @e[name=level,scores={backend=23}] ~~~ function levels/level_23/quit_level
execute @e[name=level,scores={backend=24}] ~~~ function levels/level_24/quit_level
execute @e[name=level,scores={backend=25}] ~~~ function levels/level_25/quit_level
execute @e[name=level,scores={backend=26}] ~~~ function levels/level_26/quit_level
execute @e[name=level,scores={backend=27}] ~~~ function levels/level_27/quit_level
execute @e[name=level,scores={backend=28}] ~~~ function levels/level_28/quit_level
execute @e[name=level,scores={backend=29}] ~~~ function levels/level_29/quit_level
execute @e[name=level,scores={backend=30}] ~~~ function levels/level_30/quit_level
execute @e[name=level,scores={backend=31}] ~~~ function levels/level_13/part_2/quit_level
execute @e[name=level,scores={backend=32}] ~~~ function levels/level_13/part_3/quit_level

## 33~35 | 隐藏关卡
execute @e[name=level,scores={backend=33}] ~~~ function levels/hided_1/quit_level
execute @e[name=level,scores={backend=34}] ~~~ function levels/hided_2/quit_level
execute @e[name=level,scores={backend=35}] ~~~ function levels/hided_3/quit_level

## 36~40 | 限时关卡
execute @e[name=level,scores={backend=36}] ~~~ function levels/time_limited_1/quit_level
execute @e[name=level,scores={backend=37}] ~~~ function levels/time_limited_2/quit_level
execute @e[name=level,scores={backend=38}] ~~~ function levels/time_limited_3/quit_level
execute @e[name=level,scores={backend=39}] ~~~ function levels/time_limited_4/quit_level
execute @e[name=level,scores={backend=40}] ~~~ function levels/time_limited_5/quit_level

## 41~50 | 彩蛋关卡
execute @e[name=level,scores={backend=41}] ~~~ function levels/easter_egg_1/quit_level
execute @e[name=level,scores={backend=42}] ~~~ function levels/easter_egg_2/quit_level
execute @e[name=level,scores={backend=43}] ~~~ function levels/easter_egg_3/quit_level
execute @e[name=level,scores={backend=44}] ~~~ function levels/easter_egg_4/quit_level
execute @e[name=level,scores={backend=45}] ~~~ function levels/easter_egg_5/quit_level
execute @e[name=level,scores={backend=46}] ~~~ function levels/easter_egg_6/quit_level
execute @e[name=level,scores={backend=47}] ~~~ function levels/easter_egg_7/quit_level
execute @e[name=level,scores={backend=48}] ~~~ function levels/easter_egg_8/quit_level
execute @e[name=level,scores={backend=49}] ~~~ function levels/easter_egg_9/quit_level
execute @e[name=level,scores={backend=50}] ~~~ function levels/easter_egg_10/quit_level

## 51~60 | 自定义关卡
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ setblock -103 2 -13 redstone_block
execute @e[name=level,scores={backend=51..60}] ~~~ function levels/all_levels/quit_level
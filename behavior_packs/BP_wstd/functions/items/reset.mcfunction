# 重置功能控制器

# -5 | 烟花秀设置 | 重置发射器
execute @e[name=level,scores={backend=-5}] ~~~ clone 8 5 7 8 5 7 10 22 -25
execute @e[name=level,scores={backend=-5}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.settings.firework_settings.reset"}]}

# 1~32 | 主线关卡
execute @e[name=level,scores={backend=1}] ~~~ function levels/level_1/start_level
execute @e[name=level,scores={backend=2}] ~~~ function levels/level_2/start_level
execute @e[name=level,scores={backend=3}] ~~~ function levels/level_3/start_level
execute @e[name=level,scores={backend=4}] ~~~ function levels/level_4/start_level
execute @e[name=level,scores={backend=5}] ~~~ function levels/level_5/start_level
execute @e[name=level,scores={backend=6}] ~~~ function levels/level_6/start_level
execute @e[name=level,scores={backend=7}] ~~~ function levels/level_7/start_level
execute @e[name=level,scores={backend=8}] ~~~ function levels/level_8/start_level
execute @e[name=level,scores={backend=9}] ~~~ function levels/level_9/start_level
execute @e[name=level,scores={backend=10}] ~~~ execute @a[scores={dimension=1},c=1] ~~~ function levels/level_10/start_level
execute @e[name=level,scores={backend=11}] ~~~ function levels/level_11/start_level
execute @e[name=level,scores={backend=12}] ~~~ function levels/level_12/start_level
execute @e[name=level,scores={backend=13}] ~~~ function levels/level_13/part_1/start_level
execute @e[name=level,scores={backend=31}] ~~~ function levels/level_13/part_2/start_level
execute @e[name=level,scores={backend=32}] ~~~ function levels/level_13/part_3/start_level
execute @e[name=level,scores={backend=14}] ~~~ function levels/level_14/start_level
execute @e[name=level,scores={backend=15}] ~~~ function levels/level_15/start_level
execute @e[name=level,scores={backend=16}] ~~~ function levels/level_16/start_level
execute @e[name=level,scores={backend=17}] ~~~ function levels/level_17/start_level
execute @e[name=level,scores={backend=18}] ~~~ function levels/level_18/start_level
execute @e[name=level,scores={backend=19}] ~~~ function levels/level_19/start_level
execute @e[name=level,scores={backend=20}] ~~~ function levels/level_20/start_level
execute @e[name=level,scores={backend=21}] ~~~ function levels/level_21/start_level
execute @e[name=level,scores={backend=22}] ~~~ function levels/level_22/start_level
execute @e[name=level,scores={backend=23}] ~~~ function levels/level_23/start_level
execute @e[name=level,scores={backend=24}] ~~~ function levels/level_24/start_level
execute @e[name=level,scores={backend=25}] ~~~ function levels/level_25/start_level
execute @e[name=level,scores={backend=26}] ~~~ function levels/level_26/start_level
execute @e[name=level,scores={backend=27}] ~~~ function levels/level_27/start_level
execute @e[name=level,scores={backend=28}] ~~~ function levels/level_28/start_level
execute @e[name=level,scores={backend=29}] ~~~ function levels/level_29/start_level
execute @e[name=level,scores={backend=30}] ~~~ function levels/level_30/start_level

# 33~35 | 隐藏关卡
execute @e[name=level,scores={backend=33}] ~~~ function levels/hided_1/start_level
execute @e[name=level,scores={backend=34}] ~~~ function levels/hided_2/start_level
execute @e[name=level,scores={backend=35}] ~~~ function levels/hided_3/start_level

# 36~40 | 限时关卡
execute @e[name=level,scores={backend=36}] ~~~ function levels/time_limited_1/start_level
execute @e[name=level,scores={backend=37}] ~~~ function levels/time_limited_2/start_level
execute @e[name=level,scores={backend=38}] ~~~ function levels/time_limited_3/start_level
execute @e[name=level,scores={backend=39}] ~~~ function levels/time_limited_4/start_level
execute @e[name=level,scores={backend=40}] ~~~ function levels/time_limited_5/start_level

# 41~50 | 彩蛋关卡
execute @e[name=level,scores={backend=41}] ~~~ function levels/easter_egg_1/start_level
execute @e[name=level,scores={backend=42}] ~~~ function levels/easter_egg_2/start_level
execute @e[name=level,scores={backend=43}] ~~~ function levels/easter_egg_3/start_level
execute @e[name=level,scores={backend=44}] ~~~ function levels/easter_egg_4/start_level
execute @e[name=level,scores={backend=45}] ~~~ function levels/easter_egg_5/start_level
execute @e[name=level,scores={backend=46}] ~~~ function levels/easter_egg_6/start_level
execute @e[name=level,scores={backend=47}] ~~~ function levels/easter_egg_7/start_level
execute @e[name=level,scores={backend=48}] ~~~ function levels/easter_egg_8/start_level
execute @e[name=level,scores={backend=49}] ~~~ function levels/easter_egg_9/start_level
execute @e[name=level,scores={backend=50}] ~~~ function levels/easter_egg_10/start_level

# 51~60 | 自定义关卡 - 游戏模式
execute @e[name=level,scores={backend=51}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ function levels/diy_levels/start_diy_1
execute @e[name=level,scores={backend=52}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ function levels/diy_levels/start_diy_2
execute @e[name=level,scores={backend=53}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ function levels/diy_levels/start_diy_3
execute @e[name=level,scores={backend=54}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ function levels/diy_levels/start_diy_4
execute @e[name=level,scores={backend=55}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ function levels/diy_levels/start_diy_5
execute @e[name=level,scores={backend=56}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ function levels/diy_levels/start_diy_6
execute @e[name=level,scores={backend=57}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ function levels/diy_levels/start_diy_7
execute @e[name=level,scores={backend=58}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ function levels/diy_levels/start_diy_8
execute @e[name=level,scores={backend=59}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ function levels/diy_levels/start_diy_9
execute @e[name=level,scores={backend=60}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ function levels/diy_levels/start_diy_10

execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.diy_levels.edit_mode"}]}

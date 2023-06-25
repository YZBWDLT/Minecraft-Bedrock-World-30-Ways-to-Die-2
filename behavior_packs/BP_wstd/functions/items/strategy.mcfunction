# 攻略功能控制器

execute @e[name=level,scores={backend=-18}] ~~~ function levels/level_tutorial/strategy

## 主线关卡
execute @e[name=level,scores={backend=1}] ~~~ function levels/level_1/strategy
execute @e[name=level,scores={backend=2}] ~~~ function levels/level_2/strategy
execute @e[name=level,scores={backend=3}] ~~~ function levels/level_3/strategy
execute @e[name=level,scores={backend=4}] ~~~ function levels/level_4/strategy
execute @e[name=level,scores={backend=5}] ~~~ function levels/level_5/strategy
execute @e[name=level,scores={backend=6}] ~~~ function levels/level_6/strategy
execute @e[name=level,scores={backend=7}] ~~~ function levels/level_7/strategy
execute @e[name=level,scores={backend=8}] ~~~ function levels/level_8/strategy
execute @e[name=level,scores={backend=9}] ~~~ function levels/level_9/strategy
execute @e[name=level,scores={backend=10}] ~~~ function levels/level_10/strategy
execute @e[name=level,scores={backend=11}] ~~~ function levels/level_11/strategy
execute @e[name=level,scores={backend=12}] ~~~ function levels/level_12/strategy
execute @e[name=level,scores={backend=13}] ~~~ function levels/level_13/part_1/strategy
execute @e[name=level,scores={backend=14}] ~~~ function levels/level_14/strategy
execute @e[name=level,scores={backend=15}] ~~~ function levels/level_15/strategy
execute @e[name=level,scores={backend=16}] ~~~ function levels/level_16/strategy
execute @e[name=level,scores={backend=17}] ~~~ function levels/level_17/strategy
execute @e[name=level,scores={backend=18}] ~~~ function levels/level_18/strategy
execute @e[name=level,scores={backend=19}] ~~~ function levels/level_19/strategy
execute @e[name=level,scores={backend=23}] ~~~ function levels/level_23/strategy
execute @e[name=level,scores={backend=24}] ~~~ function levels/level_24/strategy
execute @e[name=level,scores={backend=25}] ~~~ function levels/level_25/strategy
execute @e[name=level,scores={backend=26}] ~~~ function levels/level_26/strategy
execute @e[name=level,scores={backend=27}] ~~~ function levels/level_27/strategy
execute @e[name=level,scores={backend=28}] ~~~ function levels/level_28/strategy
execute @e[name=level,scores={backend=29}] ~~~ function levels/level_29/strategy

## 限时关卡
execute @e[name=level,scores={backend=36}] ~~~ function levels/time_limited_1/strategy
execute @e[name=level,scores={backend=37}] ~~~ function levels/time_limited_2/strategy
execute @e[name=level,scores={backend=38}] ~~~ function levels/time_limited_3/strategy
execute @e[name=level,scores={backend=39}] ~~~ function levels/time_limited_4/strategy
execute @e[name=level,scores={backend=40}] ~~~ function levels/time_limited_5/strategy

## 彩蛋关卡
execute @e[name=level,scores={backend=41}] ~~~ function levels/easter_egg_1/strategy
execute @e[name=level,scores={backend=42}] ~~~ function levels/easter_egg_2/strategy
execute @e[name=level,scores={backend=43}] ~~~ function levels/easter_egg_3/strategy
execute @e[name=level,scores={backend=44}] ~~~ function levels/easter_egg_4/strategy
execute @e[name=level,scores={backend=45}] ~~~ function levels/easter_egg_5/strategy
execute @e[name=level,scores={backend=46}] ~~~ function levels/easter_egg_6/strategy
execute @e[name=level,scores={backend=47}] ~~~ function levels/easter_egg_7/strategy
execute @e[name=level,scores={backend=48}] ~~~ function levels/easter_egg_8/strategy
execute @e[name=level,scores={backend=49}] ~~~ function levels/easter_egg_9/strategy
execute @e[name=level,scores={backend=50}] ~~~ function levels/easter_egg_10/strategy

# 51~60 | 自定义关卡 - 游戏模式
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ setblock -103 2 -15 minecraft:redstone_block
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.diy_levels.edit_mode"}]}

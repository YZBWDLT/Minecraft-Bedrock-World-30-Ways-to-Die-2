# 跳过功能控制器

execute @e[name=level,scores={backend=-18}] ~~~ function levels/level_tutorial/skip
execute @e[name=level,scores={backend=13}] ~~~ function levels/level_13/part_1/skip
execute @e[name=level,scores={backend=31}] ~~~ function levels/level_13/part_2/skip
execute @e[name=level,scores={backend=32}] ~~~ function levels/level_13/part_3/skip
execute @e[name=level,scores={backend=20}] ~~~ function levels/level_20/skip
execute @e[name=level,scores={backend=21}] ~~~ function levels/level_21/skip
execute @e[name=level,scores={backend=22}] ~~~ function levels/level_22/skip
execute @e[name=level,scores={backend=30}] ~~~ function levels/level_30/skip

execute @e[name=level,scores={backend=36}] ~~~ function levels/time_limited_1/skip
execute @e[name=level,scores={backend=39..40}] ~~~ kill @a

# 51~60 | 自定义关卡 - 游戏模式
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ setblock -103 2 -16 redstone_block
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.diy_levels.edit_mode"}]}

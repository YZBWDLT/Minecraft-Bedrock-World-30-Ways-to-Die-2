# 维度传送控制器

## === 主世界 -> 下界 | execute @a ~~~ execute @s...将执行维度从主世界转移到下界的玩家上 ===

### 第7关 | 到达下界时，传送到第7关的下界房间
execute @e[name=level,scores={backend=7}] ~~~ execute @a[scores={dimension=1}] ~~~ execute @s[x=-3,y=10,z=-10,dx=3,dy=3,dz=3] ~~~ structure load level_7_nether 30 13 0
execute @e[name=level,scores={backend=7}] ~~~ execute @a[scores={dimension=1}] ~~~ execute @s[x=-3,y=10,z=-10,dx=3,dy=3,dz=3] ~~~ tp @s 32 14 5 facing 40 14 5
### 第10关 | 到达下界时，开启第10关
execute @e[name=level,scores={backend=10}] ~~~ execute @a[scores={dimension=1}] ~~~ execute @s[x=-3,y=10,z=-10,dx=3,dy=3,dz=3,c=1] ~~~ function levels/level_10/start_level

## === 下界 -> 主世界 ===

### 第7关 | 到达主世界时，运行退出关卡程序
execute @e[name=level,scores={backend=7}] ~~~ execute @a[x=7,y=7,z=2,dx=3,dy=3,dz=3,scores={dimension=0}] ~~~ function levels/level_7/quit_level
### 第10关 | 回到主世界时，运行退出关卡程序
execute @e[name=level,scores={backend=10}] ~~~ execute @a[x=7,y=7,z=2,dx=3,dy=3,dz=3,scores={dimension=0}] ~~~ function levels/level_10/quit_level
### 其他情况，一律退出
execute @e[name=level,scores={backend=!7,backend=!10}] ~~~ execute @a[x=7,y=7,z=2,dx=3,dy=3,dz=3,scores={dimension=0}] ~~~ function levels/all_levels/quit_level

## === 异常进入下界处理 ===
execute @e[name=developerMode,scores={settings=0}] ~~~ execute @e[name=level,scores={backend=!0,backend=!7,backend=!10,backend=!-15}] ~~~ execute @a[scores={dimension=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.invalid_level_id.nether","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=level]"}}]}}]}
execute @e[name=developerMode,scores={settings=0}] ~~~ execute @e[name=level,scores={backend=!0,backend=!7,backend=!10,backend=!-15}] ~~~ execute @a[scores={dimension=1}] ~~~ clear @s
execute @e[name=developerMode,scores={settings=0}] ~~~ execute @e[name=level,scores={backend=!0,backend=!7,backend=!10,backend=!-15}] ~~~ execute @a[scores={dimension=1}] ~~~ give @s wstd:next_step
execute @e[name=developerMode,scores={settings=0}] ~~~ execute @e[name=level,scores={backend=!0,backend=!7,backend=!10,backend=!-15}] ~~~ execute @a[scores={dimension=1}] ~~~ tp @s -2 12 -5
execute @e[name=developerMode,scores={settings=0}] ~~~ execute @e[name=level,scores={backend=!0,backend=!7,backend=!10,backend=!-15}] ~~~ execute @a[scores={dimension=1}] ~~~ scoreboard players set @e[name=level] backend -15

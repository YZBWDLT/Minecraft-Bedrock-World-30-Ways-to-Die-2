# 关卡完成控制器

# ===== 通关延迟器 | 部分关卡因为瞬时通关会出现问题，所以需要延迟通关 =====
execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ scoreboard players add @e[name=levelCompleteDelay,scores={active=-5..5}] time -1

# ===== 打上关卡完成标签 | 下面的触发函数触发后再清除标签 =====
execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ execute @e[name=levelCompleteDelay,scores={time=1..}] ~~~ scoreboard players set @e[name=levelCompleted] backend 1
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ scoreboard players set @e[name=levelCompleted] backend 0

# ===== 关卡完成触发函数 =====

## -20~-19 | 开始屋 | 死亡后回到开始屋
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=-20..-19}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ tp @s 30 9 27
## -18~-16 | 教程关卡与初步地图设置 | 死亡后回到教程关卡
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=-18..-16}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ tp @s 45 21 -25
## -15 | 下界异常情况 | 死亡后改关卡ID为0
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=-15}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ scoreboard players set @e[name=level] backend 0
## -14~-4 | 其它大厅关卡 | 死亡后回到大厅
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=-14..-4}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function halls/main_hall/start_level
## -3 | 限时大厅 | 死亡后回到限时大厅
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=-3}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function halls/time_limited_hall/start_level
## -2 | 彩蛋大厅 | 死亡后回到彩蛋大厅
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=-2}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function halls/easter_egg_hall/start_level
## -1 | DIY大厅 | 死亡后回到DIY大厅
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=-1}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function halls/diy_hall/start_level
## 0 | 主大厅 | 死亡后回到大厅 
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=-0}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function halls/main_hall/start_level

## 1~32 | 主线关卡 | 死亡后触发通关函数
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=1}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_1/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=2}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_2/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=3}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_3/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=4}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_4/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=5}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_5/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=6}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_6/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=7}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_7/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=8}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_8/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=9}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_9/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=10}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_10/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=11}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_11/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=12}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_12/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=13}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_13/part_1/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=14}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_14/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=15}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_15/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=16}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_16/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=17}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_17/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=18}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_18/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=19}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_19/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=20}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_20/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=21}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_21/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=22}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_22/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=23}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_23/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=24}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_24/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=25}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_25/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=26}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_26/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=27}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_27/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=28}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_28/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=29}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_29/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=30}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_30/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=31}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_13/part_2/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=32}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/level_13/part_3/level_completed

## 33~35 | 隐藏关卡 | 死亡后回到大厅
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=33}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"deathmessage.hided_1","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=34}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"deathmessage.hided_2","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=35}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"deathmessage.hided_3","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=33..35}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function halls/main_hall/start_level

## 36~40 | 限时关卡 | 死亡后触发通关函数
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=36}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/time_limited_1/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=37}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/time_limited_2/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=38}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/time_limited_3/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=39}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/time_limited_4/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=40}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/time_limited_5/level_completed

## 41~50 | 彩蛋关卡 | 死亡后触发通关函数
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=41}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/easter_egg_1/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=42}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/easter_egg_2/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=43}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/easter_egg_3/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=44}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/easter_egg_4/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=45}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/easter_egg_5/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=46}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/easter_egg_6/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=47}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/easter_egg_7/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=48}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/easter_egg_8/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=49}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/easter_egg_9/level_completed
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=50}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/easter_egg_10/level_completed

## 51~60 | 自定义关卡 | 死亡后触发命令方块
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=51..60}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ setblock -103 2 -17 minecraft:redstone_block
execute @e[name=levelCompleteDelay,scores={time=..0}] ~~~ execute @e[name=level,scores={backend=51..60}] ~~~ execute @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] ~~~ function levels/all_levels/level_completed
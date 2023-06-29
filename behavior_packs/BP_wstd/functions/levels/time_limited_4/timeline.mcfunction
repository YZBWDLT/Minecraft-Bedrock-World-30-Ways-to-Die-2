# 时间线

## ===== 倒计时系统 =====
## 当时间线到达20时，即过了1秒，为剩余时间减少1秒
execute @e[name=timeline,scores={time=20..}] ~~~ scoreboard players remove @e[name=remainingTime] time 1
## 1s循环一次
scoreboard players remove @e[name=timeline,scores={time=20..}] time 20
## 计时为0时自动停止并退出
execute @e[name=remainingTime,scores={time=..0}] ~~~ function levels/time_limited_4/quit_level

## ===== 给玩家弓和钓竿 =====
execute @e[name=timeline,scores={active=1}] ~~~ give @a[hasitem={item=fishing_rod,quantity=0}] fishing_rod 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=timeline,scores={active=1}] ~~~ give @a[hasitem={item=bow,quantity=0}] bow 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=timeline,scores={active=1}] ~~~ give @a[hasitem={item=arrow,quantity=0}] arrow 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## ===== 防止玩家掉进坑里 =====
execute @a[x=-57,y=21,z=-99,dx=8,dy=9,dz=8] ~~~ scoreboard players set @e[name=soundPlayer] active 5
tellraw @a[x=-57,y=21,z=-99,dx=8,dy=9,dz=8] {"rawtext":[{"translate":"chat.time_limited_4.fell_into_hole"}]}
tp @a[x=-57,y=21,z=-99,dx=8,dy=9,dz=8] -46 32 -95 facing -60 32 -95

## ===== 给玩家的武器附魔 =====
enchant @a infinity 1
enchant @a unbreaking 3

## ===== 检测实体掉进坑里 =====
### 猪掉进坑里时，加一分
execute @e[type=pig,x=-54,y=21,z=-96,dx=2,dy=0,dz=2] ~~~ scoreboard players add @e[name=counter] backend 1
kill @e[type=pig,x=-54,y=21,z=-96,dx=2,dy=0,dz=2]
### 猪灵掉进坑里时，扣一分
execute @e[type=piglin,x=-54,y=21,z=-96,dx=2,dy=0,dz=2] ~~~ scoreboard players add @e[name=counter] backend -1
kill @e[type=piglin,x=-54,y=21,z=-96,dx=2,dy=0,dz=2]
### 僵尸猪灵掉进坑里时，游戏重置
execute @e[type=zombie_pigman,x=-54,y=21,z=-96,dx=2,dy=0,dz=2] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_10.failed"}]}
execute @e[type=zombie_pigman,x=-54,y=21,z=-96,dx=2,dy=0,dz=2] ~~~ function levels/time_limited_4/start_level
kill @e[type=zombie_pigman,x=-54,y=21,z=-96,dx=2,dy=0,dz=2]

## ===== 红石灯同步 =====
### 1分红石灯
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=0}] ~~~ setblock -59 27 -93 air
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=1..5}] ~~~ setblock -59 27 -93 redstone_block
### 2分红石灯
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=0..1}] ~~~ setblock -59 27 -94 air
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=2..5}] ~~~ setblock -59 27 -94 redstone_block
### 3分红石灯
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=0..2}] ~~~ setblock -59 27 -95 air
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=3..5}] ~~~ setblock -59 27 -95 redstone_block
### 4分红石灯
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=0..3}] ~~~ setblock -59 27 -96 air
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=4..5}] ~~~ setblock -59 27 -96 redstone_block
### 5分红石灯
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=0..4}] ~~~ setblock -59 27 -97 air
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ setblock -59 27 -97 redstone_block

## ===== 当玩家达成目标时，给予跳过 =====
### active.soundPlayer将播放mob.villager.yes
execute @e[name=counter,scores={backend=5}] ~~~ execute @e[name=remainingTime,scores={time=1..}] ~~~ execute @a[hasitem={item=wstd:skip,quantity=0}] ~~~ scoreboard players set @e[name=soundPlayer] active 3
execute @e[name=counter,scores={backend=5}] ~~~ execute @e[name=remainingTime,scores={time=1..}] ~~~ tellraw @a[hasitem={item=wstd:skip,quantity=0}] {"rawtext":[{"translate":"chat.time_limited_4.succeed"}]}
execute @e[name=counter,scores={backend=5}] ~~~ execute @e[name=remainingTime,scores={time=1..}] ~~~ give @a[hasitem={item=wstd:skip,quantity=0}] wstd:skip 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
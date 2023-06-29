# 时间线

## ===== 倒计时系统 =====
## 当时间线到达20时，即过了1秒，为剩余时间减少1秒
execute @e[name=timeline,scores={time=20..}] ~~~ scoreboard players remove @e[name=remainingTime] time 1
## 1s循环一次
scoreboard players remove @e[name=timeline,scores={time=20..}] time 20
## 计时为0时自动停止并退出
execute @e[name=remainingTime,scores={time=..0}] ~~~ function levels/time_limited_5/quit_level

## ===== 开始游戏后，清除下一步 =====
execute @e[name=timeline,scores={active=1}] ~~~ clear @a wstd:next_step

## ===== 给予抗性提升 =====
execute @e[name=ticker,scores={time=0}] ~~~ effect @a resistance 30 5 true

## ===== 检测结构是否一致 =====
## execute if blocks -14 21 -96 -19 25 -99 -19 21 -104 all if score timeline active matches 1 if score counter backend matches 0 run function levels/time_limited_5/structure_1
## execute if blocks -14 21 -96 -19 25 -99 -19 21 -104 all if score timeline active matches 1 if score counter backend matches 1 run function levels/time_limited_5/structure_2
## execute if blocks -14 21 -96 -19 25 -99 -19 21 -104 all if score timeline active matches 1 if score counter backend matches 2 run function levels/time_limited_5/structure_3
## execute if blocks -14 21 -96 -19 25 -99 -19 21 -104 all if score timeline active matches 1 if score counter backend matches 3 run function levels/time_limited_5/structure_4
## execute if blocks -14 21 -96 -19 25 -99 -19 21 -104 all if score timeline active matches 1 if score counter backend matches 4 run function levels/time_limited_5/structure_5

## ===== 当玩家达成目标时，给予跳过 =====
### active.soundPlayer将播放mob.villager.yes
execute @e[name=counter,scores={backend=6}] ~~~ execute @e[name=remainingTime,scores={time=1..}] ~~~ execute @a[hasitem={item=wstd:skip,quantity=0}] ~~~ scoreboard players set @e[name=soundPlayer] active 3
execute @e[name=counter,scores={backend=6}] ~~~ execute @e[name=remainingTime,scores={time=1..}] ~~~ tellraw @a[hasitem={item=wstd:skip,quantity=0}] {"rawtext":[{"translate":"chat.time_limited_4.succeed"}]}
execute @e[name=counter,scores={backend=6}] ~~~ execute @e[name=remainingTime,scores={time=1..}] ~~~ give @a[hasitem={item=wstd:skip,quantity=0}] wstd:skip 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## ===== 红石灯同步 =====
### 1分红石灯
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=0..1}] ~~~ setblock -21 23 -98 air
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=2..6}] ~~~ setblock -21 23 -98 redstone_block
### 2分红石灯
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=0..2}] ~~~ setblock -21 23 -99 air
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=3..6}] ~~~ setblock -21 23 -99 redstone_block
### 3分红石灯
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=0..3}] ~~~ setblock -21 23 -100 air
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=4..6}] ~~~ setblock -21 23 -100 redstone_block
### 4分红石灯
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=0..4}] ~~~ setblock -21 23 -101 air
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=5..6}] ~~~ setblock -21 23 -101 redstone_block
### 5分红石灯
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=0..5}] ~~~ setblock -21 23 -102 air
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ setblock -21 23 -102 redstone_block

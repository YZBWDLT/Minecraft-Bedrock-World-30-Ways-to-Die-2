# 时间线

## ===== 倒计时系统 =====
## 当时间线到达20时，即过了1秒，为剩余时间减少1秒
execute @e[name=timeline,scores={time=20..}] ~~~ scoreboard players remove @e[name=remainingTime] time 1
## 1s循环一次
scoreboard players remove @e[name=timeline,scores={time=20..}] time 20
## 计时为0时自动停止并退出
execute @e[name=remainingTime,scores={time=..0}] ~~~ function levels/time_limited_2/quit_level

## 粒子与玩家位置检测
execute @e[name=ticker,scores={time=0}] ~~~ particle wstd:red -35 33 -85
execute @a[x=-35,y=34,z=-85,r=1.5] ~~~ kill @s
# 粒子设定
execute @e[name=ticker,scores={time=0..1}] ~~~ function halls/main_hall/particle_settings

# 关卡进入检测
function halls/main_hall/into_level_tester

# ===== 结束屋功能 =====
## 重置地图确认倒计时
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @e[name=ticker,scores={time=0}] ~~~ scoreboard players remove @e[name=remainingTime,scores={time=..9}] time 1
## 重置地图失效
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @e[name=remainingTime,scores={time=..-1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.request_out_of_time"}]}
execute @e[name=mapCompleted,scores={stats=2}] ~~~ scoreboard players set @e[name=remainingTime,scores={time=..-1}] time 10

execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @a[x=-50,y=9,z=30,r=1] ~~~ function halls/main_hall/play_end_music
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @a[x=-50,y=9,z=24,r=1] ~~~ function halls/end/advancements_completed/start_level
## 重置地图
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @a[x=-46,y=9,z=27,r=1] ~~~ execute @e[name=remainingTime,scores={time=0..9}] ~~~ function settings/reset_map
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @a[x=-46,y=9,z=27,r=1] ~~~ execute @e[name=remainingTime,scores={time=10}] ~~~ scoreboard players set @e[name=soundPlayer] active 12
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @a[x=-46,y=9,z=27,r=1] ~~~ execute @e[name=remainingTime,scores={time=10}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.settings.reset_map.warning"}]}
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @a[x=-46,y=9,z=27,r=1] ~~~ execute @e[name=remainingTime,scores={time=10}] ~~~ scoreboard players set @s time 9
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @a[x=-46,y=9,z=27,r=1] ~~~ tp @s -43 9 27

execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @a[x=-50,y=9,z=24,r=1] ~~~ tellraw @a {"rawtext":[{"translate":"chat.replay_end_effects"}]}
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @a[x=-50,y=9,z=24,r=1] ~~~ tp @a -27 9 27

# ===== 传送入口 =====
## 传送到结束屋
execute @a[x=21.5,y=9,z=29.5,r=0.5] ~~~ scoreboard players set @e[name=soundPlayer] active 11
execute @a[x=21.5,y=9,z=29.5,r=0.5] ~~~ tp @s -35 9 27
## 传送到起始
execute @a[x=-38.5,y=9,z=29.5,r=0.5] ~~~ scoreboard players set @e[name=soundPlayer] active 11
execute @a[x=-38.5,y=9,z=29.5,r=0.5] ~~~ tp @s 23 9 27
## 

## 第30关第一次通关后(stats.levelAdvancement=30&stats.mapCompleted=0)，触发结束特效1
execute @e[name=level,scores={backend=0}] ~~~ execute @e[name=levelAdvancement,scores={stats=30}] ~~~ execute @e[name=mapCompleted,scores={stats=0}] ~~~ function halls/end/mainline_completed/start_level

## 完成所有进度第二次通关后(stats.advancement=30&stats.mapCompleted=1)，触发结束特效2
execute @e[name=level,scores={backend=0}] ~~~ execute @e[name=advancement,scores={stats=30}] ~~~ execute @e[name=mapCompleted,scores={stats=1}] ~~~ function halls/end/advancements_completed/start_level
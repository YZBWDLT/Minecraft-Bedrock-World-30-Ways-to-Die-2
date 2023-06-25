# 时间线

## === 粒子释放器 | 每1秒释放一次粒子 ===
execute @e[name=ticker,scores={time=0}] ~~~ particle wstd:light_blue 48 21 -22
execute @e[name=ticker,scores={time=0}] ~~~ particle wstd:green 46 21 -22
execute @e[name=ticker,scores={time=0}] ~~~ particle wstd:yellow 44 21 -22
execute @e[name=ticker,scores={time=0}] ~~~ particle wstd:red 42 21 -22
execute @e[name=ticker,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=1..}] ~~~ particle wstd:red 41 20 -25

## === 进入光束检测器 ===

## 选择非常简单模式
execute @a[x=48,y=21,z=-22,r=1] ~~~ function init/display_scoreboard
execute @a[x=48,y=21,z=-22,r=1] ~~~ function settings/difficulty/very_easy
execute @a[x=48,y=21,z=-22,r=1] ~~~ function halls/choose_difficulty/quit
## 选择简单模式
execute @a[x=46,y=21,z=-22,r=1] ~~~ function init/display_scoreboard
execute @a[x=46,y=21,z=-22,r=1] ~~~ function settings/difficulty/easy
execute @a[x=46,y=21,z=-22,r=1] ~~~ function halls/choose_difficulty/quit
## 选择普通模式
execute @a[x=44,y=21,z=-22,r=1] ~~~ function init/display_scoreboard
execute @a[x=44,y=21,z=-22,r=1] ~~~ function settings/difficulty/normal
execute @a[x=44,y=21,z=-22,r=1] ~~~ function halls/choose_difficulty/quit
## 选择困难模式
execute @a[x=42,y=21,z=-22,r=1] ~~~ function init/display_scoreboard
execute @a[x=42,y=21,z=-22,r=1] ~~~ function settings/difficulty/hard
execute @a[x=42,y=21,z=-22,r=1] ~~~ function halls/choose_difficulty/quit
## 选择速通模式
execute @e[name=counter,scores={backend=1..}] ~~~ execute @a[x=41,y=21,z=-25,r=0.65] ~~~ function init/display_scoreboard
execute @e[name=counter,scores={backend=1..}] ~~~ execute @a[x=41,y=21,z=-25,r=0.65] ~~~ scoreboard players set @e[name=speedrunMode] settings 0
execute @e[name=counter,scores={backend=1..}] ~~~ execute @a[x=41,y=21,z=-25,r=0.65] ~~~ function settings/speedrun_mode
execute @e[name=counter,scores={backend=1..}] ~~~ execute @a[x=41,y=21,z=-25,r=0.65] ~~~ function halls/choose_difficulty/quit
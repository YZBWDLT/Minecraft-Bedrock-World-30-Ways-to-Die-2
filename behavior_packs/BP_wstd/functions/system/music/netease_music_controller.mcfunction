# 当time.playsoundInterval >= 0时，默认播放maingame，每秒执行加1操作
scoreboard players add @e[name=playsoundInterval,scores={time=0..200}] time 1
scoreboard players set @e[name=playsoundInterval,scores={time=201..}] time 0

execute @e[name=level,scores={backend=!-13}] ~~~ execute @e[name=playsoundInterval,scores={time=1}] ~~~ execute @a ~~~ stopsound @a
execute @e[name=level,scores={backend=!-13}] ~~~ execute @e[name=speedrunMode,scores={settings=0}] ~~~ execute @e[name=playsoundInterval,scores={time=1}] ~~~ execute @a ~~~ playsound maingame @s ~~~ 1 1
execute @e[name=level,scores={backend=!-13}] ~~~ execute @e[name=speedrunMode,scores={settings=1}] ~~~ execute @e[name=playsoundInterval,scores={time=1}] ~~~ execute @a ~~~ playsound timelimit @s ~~~ 1 1

# 当time.playsoundInterval < 0时，默认播放timelimit，每秒执行减1操作
scoreboard players add @e[name=playsoundInterval,scores={time=-201..-1}] time -1
scoreboard players set @e[name=playsoundInterval,scores={time=..-202}] time -1

execute @e[name=level,scores={backend=!-13}] ~~~ execute @e[name=playsoundInterval,scores={time=-2}] ~~~ execute @a ~~~ stopsound @a
execute @e[name=level,scores={backend=!-13}] ~~~ execute @e[name=playsoundInterval,scores={time=-2}] ~~~ execute @a ~~~ playsound timelimit @s ~~~ 1 1

# 当在最终特效时，循环播放firework_show（3：15）
execute @e[name=level,scores={backend=-13}] ~~~ execute @e[name=mapCompleted,scores={stats=1..2}] ~~~ execute @e[name=playsoundInterval,scores={time=1}] ~~~ execute @a ~~~ playsound firework_show @s ~~~ 1 1
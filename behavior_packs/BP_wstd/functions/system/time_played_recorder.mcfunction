# 时间记录器

## === 每1秒刷新1次 ===
scoreboard players add @e[name=ticker] time 1
scoreboard players remove @e[name=ticker,scores={time=20..}] time 20

## === 当ticker到达19时，即1秒，为玩家添加分数 | 需要在游戏正式开始后（-15 <= backend.level <= 60）正式开始计时 ===
execute @e[name=level,scores={backend=-15..60}] ~~~ execute @e[name=ticker,scores={time=19..}] ~~~ scoreboard players add @e[name=playedSecond] time 1
execute @e[name=level,scores={backend=-15..60}] ~~~ execute @e[name=playedSecond,scores={time=60..}] ~~~ scoreboard players add @e[name=playedMinute] time 1
execute @e[name=level,scores={backend=-15..60}] ~~~ execute @e[name=playedSecond,scores={time=..-1}] ~~~ scoreboard players add @e[name=playedMinute] time -1

execute @e[name=level,scores={backend=-15..60}] ~~~ scoreboard players remove @e[name=playedSecond,scores={time=60..}] time 60
execute @e[name=level,scores={backend=-15..60}] ~~~ scoreboard players remove @e[name=playedSecond,scores={time=..-1}] time -60
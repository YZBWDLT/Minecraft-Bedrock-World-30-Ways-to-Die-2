# 每5秒循环一次
scoreboard players set @e[name=timeline,scores={time=!0..100}] time 0

# 防止玩家受到伤害
execute @e[name=timeline,scores={time=0}] ~~~ effect @a resistance 30 5 true

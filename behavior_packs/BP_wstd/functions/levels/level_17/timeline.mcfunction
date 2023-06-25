# 每0.5秒循环一次
execute @e[name=timeline,scores={time=10}] ~~~ scoreboard players set @s time 0

# 给予骷髅防火
execute @e[name=timeline,scores={time=9}] ~~~ effect @e[type=skeleton] fire_resistance 10 0 true
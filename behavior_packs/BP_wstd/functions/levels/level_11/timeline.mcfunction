# 每0.5秒循环一次
execute @e[name=timeline,scores={time=10}] ~~~ scoreboard players set @s time 0

# 给予僵尸防火
execute @e[name=timeline,scores={time=9}] ~~~ effect @e[type=zombie,x=52,y=21,z=56,dx=8,dy=4,dz=8] fire_resistance 10 0 true
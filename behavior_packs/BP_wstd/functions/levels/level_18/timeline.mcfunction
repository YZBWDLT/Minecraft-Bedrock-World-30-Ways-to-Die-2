# 每0.5秒循环一次
execute @e[name=timeline,scores={time=10}] ~~~ scoreboard players set @s time 0

# 当玩家在0层以下时，判定玩家掉进虚空（counter=1）
execute @e[name=timeline,scores={time=9}] ~~~ execute @a ~~~ execute @s[x=~,y=-1,z=~,dx=0,dy=-50,dz=0] ~~~ scoreboard players set @e[name=counter] backend 1
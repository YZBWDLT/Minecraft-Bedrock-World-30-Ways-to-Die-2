# 每0.5秒循环一次
execute @e[name=timeline,scores={time=10}] ~~~ scoreboard players set @s time 0

# 不死图腾设定 | 0 = 未接触到岩浆 1 = 接触到岩浆
execute @e[name=timeline,scores={time=0}] ~~~ scoreboard players set @e[name=counter] backend 0
execute @e[name=timeline,scores={time=0}] ~~~ execute @a ~~~ detect ~~~ lava -1 scoreboard players set @e[name=counter] backend 1
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=0}] ~~~ replaceitem entity @a slot.weapon.offhand 0 minecraft:totem_of_undying
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name=counter,scores={backend=1}] ~~~ effect @a clear
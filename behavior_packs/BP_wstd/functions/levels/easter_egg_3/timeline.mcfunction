# backend.counter=0时，检测玩家
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-93,y=20,z=-49,dx=6,dy=6,dz=6] ~~~ fill -94 19 -52 -57 19 -38 minecraft:stained_glass["color":"white"]
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-93,y=20,z=-49,dx=6,dy=6,dz=6] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_3.destination"}]}
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-93,y=20,z=-49,dx=6,dy=6,dz=6] ~~~ scoreboard players set @e[name=counter] backend 1
# 当玩家踩到石英块时，传送回来
execute @a ~~~ execute @s[x=23,y=~,z=-49,dx=10,dy=0,dz=10] ~~~ detect ~~-1~ quartz_block -1 scoreboard players set @e[name=soundPlayer] active 5
execute @a ~~~ execute @s[x=23,y=~,z=-49,dx=10,dy=0,dz=10] ~~~ detect ~~-1~ quartz_block -1 tellraw @a {"rawtext":[{"translate":"chat.level.easter_egg_10.failed"}]}
execute @a ~~~ execute @s[x=23,y=~,z=-49,dx=10,dy=0,dz=10] ~~~ detect ~~-1~ quartz_block -1 tp @a 36 78 -45 facing 23 79 -45
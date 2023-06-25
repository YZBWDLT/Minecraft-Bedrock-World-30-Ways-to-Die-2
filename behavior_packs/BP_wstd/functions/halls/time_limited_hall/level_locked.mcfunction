tellraw @a {"rawtext":[{"translate":"chat.level_locked"}]}
execute @a ~~~ execute @a[x=-61,y=~,z=1,dx=9,dy=0,dz=8] ~~~ tp @s ~~ 5
execute @a ~~~ execute @a[x=-64,y=~,z=4,dx=2,dy=0,dz=2] ~~~ tp @s -61 9 5
scoreboard players set @e[name=soundPlayer] active 4
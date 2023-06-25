tellraw @a {"rawtext":[{"translate":"chat.level_locked"}]}
execute @a ~~~ execute @a[x=-39,y=~,z=8,dx=17,dy=0,dz=1] ~~~ tp @s ~~ 6
execute @a ~~~ execute @a[x=-39,y=~,z=1,dx=17,dy=0,dz=1] ~~~ tp @s ~~ 4
scoreboard players set @e[name=soundPlayer] active 4
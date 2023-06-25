# ===== 当玩家掉下去后，将玩家拉回去 =====
execute @a ~~~ execute @s[x=~,y=0,z=~,dx=0,dy=99,dz=0] ~~~ scoreboard players set @e[name=soundPlayer] active 5
execute @a ~~~ execute @s[x=~,y=0,z=~,dx=0,dy=99,dz=0] ~~~ tp @s 0 102 0
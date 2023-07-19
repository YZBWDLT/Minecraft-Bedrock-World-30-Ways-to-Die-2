function system/netease_version_tester
weather clear
execute @a ~~~ playsound random.orb @s ~~~ 1 2
scoreboard players set @e[name=timeline] active 1
scoreboard players set @e[name=level] backend -19
fill 28 9 27 29 12 27 air [] destroy
kill @e[type=item]
titleraw @a times 10 40 10

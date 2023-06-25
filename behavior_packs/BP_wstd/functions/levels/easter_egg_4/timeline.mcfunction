# 粒子效果
execute @e[name=ticker,scores={time=0}] ~~~ particle wstd:green -23 21 -43
execute @e[name=ticker,scores={time=0}] ~~~ particle wstd:green -23 21 -47
execute @e[name=ticker,scores={time=0}] ~~~ particle wstd:red -16 20 -49

# 检测玩家进入
execute @e[name=timeline,scores={active=2}] ~~~ execute @a[x=-23,y=21,z=-43,r=1] ~~~ function levels/easter_egg_4/like
execute @e[name=timeline,scores={active=2}] ~~~ execute @a[x=-23,y=21,z=-47,r=1] ~~~ function levels/easter_egg_4/like
execute @e[name=timeline,scores={active=2}] ~~~ execute @a[x=-16,y=21,z=-49,r=1] ~~~ scoreboard players set @e[name=timeline] active 1

# 时间线触发后，运行对话
execute @e[name=timeline,scores={time=40}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_4.dislike.line1"}]}
execute @e[name=timeline,scores={time=40}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=120}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_4.dislike.line2"}]}
execute @e[name=timeline,scores={time=120}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=200}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_4.dislike.line3"}]}
execute @e[name=timeline,scores={time=200}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=280..}] ~~~ execute @e[name=ticker,scores={time=0}] ~~~ execute @a ~~~ summon minecraft:lightning_bolt
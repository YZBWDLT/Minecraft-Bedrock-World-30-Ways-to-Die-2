# 结束特效时间线

## 定格玩家视角
execute @e[name=timeline,scores={time=0..160}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ tp @a -35 9 27 facing -39 9 27
execute @e[name=timeline,scores={time=200..}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ execute @e[name=rotater] ~~~ tp @s ~~~~0.3
execute @e[name=timeline,scores={time=200..}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ execute @e[name=rotater] ~~~ tp @a ^^4^4 facing @s

## 时间线进程
execute @e[name=timeline,scores={time=40..50}] ~~~ particle minecraft:totem_particle -40 11 28
execute @e[name=timeline,scores={time=40..50}] ~~~ particle minecraft:totem_particle -40 11 27
execute @e[name=timeline,scores={time=40..50}] ~~~ particle minecraft:totem_particle -40 11 26
execute @e[name=timeline,scores={time=40..50}] ~~~ execute @a ~~~ playsound random.orb @s ~~~

execute @e[name=timeline,scores={time=120}] ~~~ particle wstd:explosion -40 10 28
execute @e[name=timeline,scores={time=120}] ~~~ particle wstd:explosion -40 10 27
execute @e[name=timeline,scores={time=120}] ~~~ particle wstd:explosion -40 10 26
execute @e[name=timeline,scores={time=120}] ~~~ execute @a ~~~ playsound random.explode @a
execute @e[name=timeline,scores={time=120}] ~~~ fill -40 12 28 -39 9 26 air [] destroy
execute @e[name=timeline,scores={time=120}] ~~~ kill @e[type=item]
execute @e[name=timeline,scores={time=120}] ~~~ camerashake add @a 1 1 positional
execute @e[name=timeline,scores={time=120}] ~~~ setblock -47 9 28 beacon
execute @e[name=timeline,scores={time=120}] ~~~ summon je:marker "rotater" -46 9 27
execute @e[name=timeline,scores={time=120}] ~~~ tp @e[name=rotater] -46 9 27 facing 21 9 27

execute @e[name=timeline,scores={time=160}] ~~~ titleraw @a title {"rawtext":[{"translate":"title.mainline_completed"}]}
execute @e[name=timeline,scores={time=160}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.mainline_completed"}]}
execute @e[name=timeline,scores={time=160}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 0.75 1

execute @e[name=timeline,scores={time=161}] ~~~ scoreboard players set @e[name=timeline] active 2

## 重新激活时间线进程
execute @e[name=timeline,scores={time=161..170}] ~~~ execute @a[x=-43,y=9,z=27,r=3] ~~~ scoreboard players set @e[name=timeline] active 1
execute @e[name=timeline,scores={time=161..170}] ~~~ execute @a[x=-43,y=9,z=27,r=3] ~~~ scoreboard players set @e[name=timeline] time 200

## 时间线进程
execute @e[name=timeline,scores={time=280}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.mainline_completed.line1"}]}
execute @e[name=timeline,scores={time=280}] ~~~ execute @a ~~~ playsound random.pop @s ~~~

execute @e[name=timeline,scores={time=360}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.mainline_completed.line2"}]}
execute @e[name=timeline,scores={time=360}] ~~~ execute @a ~~~ playsound random.pop @s ~~~

execute @e[name=timeline,scores={time=440}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.mainline_completed.line3"}]}
execute @e[name=timeline,scores={time=440}] ~~~ execute @a ~~~ playsound random.pop @s ~~~

execute @e[name=timeline,scores={time=520}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.mainline_completed.line4"}]}
execute @e[name=timeline,scores={time=520}] ~~~ execute @a ~~~ playsound random.pop @s ~~~

execute @e[name=timeline,scores={time=600}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.mainline_completed.line5","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=advancement]"}}]}}]}
execute @e[name=timeline,scores={time=600}] ~~~ execute @a ~~~ playsound random.pop @s ~~~

execute @e[name=timeline,scores={time=680}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.mainline_completed.line6"}]}
execute @e[name=timeline,scores={time=680}] ~~~ execute @a ~~~ playsound random.pop @s ~~~

execute @e[name=timeline,scores={time=759}] ~~~ kill @e[name=rotater]
execute @e[name=timeline,scores={time=760}] ~~~ tp @a -40 10 27 facing -51 10 27
execute @e[name=timeline,scores={time=760}] ~~~ function halls/end/mainline_completed/quit_level

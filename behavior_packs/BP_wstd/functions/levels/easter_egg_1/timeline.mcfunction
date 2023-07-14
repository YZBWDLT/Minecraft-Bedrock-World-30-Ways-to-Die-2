# 时间线

## 当树被砍掉时，触发对话
execute @a ~~~ detect -35 21 -25 air 0 scoreboard players set @e[name=timeline] active 1
execute @a ~~~ detect -35 22 -25 air 0 scoreboard players set @e[name=timeline] active 1
execute @a ~~~ detect -35 23 -25 air 0 scoreboard players set @e[name=timeline] active 1
execute @a ~~~ detect -35 24 -25 air 0 scoreboard players set @e[name=timeline] active 1

## 对话
execute @e[name=timeline,scores={time=20}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.level.easter_egg_1.dialogue.line1"}]}
execute @e[name=timeline,scores={time=20}] ~~~ execute @a ~~~ playsound random.pop @s ~~~

execute @e[name=timeline,scores={time=100}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.level.easter_egg_1.dialogue.line2"}]}
execute @e[name=timeline,scores={time=100}] ~~~ execute @a ~~~ playsound random.pop @s ~~~

execute @e[name=timeline,scores={time=180}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.level.easter_egg_1.dialogue.line3"}]}
execute @e[name=timeline,scores={time=180}] ~~~ execute @a ~~~ playsound random.pop @s ~~~
execute @e[name=timeline,scores={time=180}] ~~~ execute @a ~~~ playsound smelly @s ~~~ 0.15

execute @e[name=timeline,scores={time=280}] ~~~ particle wstd:explosion -35 22 -25
execute @e[name=timeline,scores={time=280}] ~~~ execute @a ~~~ playsound random.explode
execute @e[name=timeline,scores={time=280}] ~~~ particle minecraft:huge_explosion_emitter -35 22 -25
execute @e[name=timeline,scores={time=280}] ~~~ stopsound @a smelly
execute @e[name=timeline,scores={time=281}] ~~~ kill @a

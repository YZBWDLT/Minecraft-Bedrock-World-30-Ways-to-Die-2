## 先判断实体数目，如果实体数目超过8个则停止生成
scoreboard players set @e[name=entityAmount] backend 0
execute @e[type=pig] ~~~ scoreboard players add @e[name=entityAmount] backend 1
execute @e[type=piglin] ~~~ scoreboard players add @e[name=entityAmount] backend 1
execute @e[type=zombie_pigman] ~~~ scoreboard players add @e[name=entityAmount] backend 1

execute @e[name=entityAmount,scores={backend=..8}] ~~~ execute @e[name=entitySummoner] ~~~ scoreboard players random @s backend 1 100
execute @e[name=entityAmount,scores={backend=..8}] ~~~ execute @e[name=entitySummoner,scores={backend=1..65}] ~~~ summon pig ~~~
execute @e[name=entityAmount,scores={backend=..8}] ~~~ execute @e[name=entitySummoner,scores={backend=66..90}] ~~~ summon piglin ~~~
execute @e[name=entityAmount,scores={backend=..8}] ~~~ execute @e[name=entitySummoner,scores={backend=91..100}] ~~~ summon zombie_pigman ~~~

execute @e[name=entityAmount,scores={backend=9..}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.level.time_limited_4.too_many_entities"}]}
## 当active.soundPlayer != 0时，视为已激活音效时间线
## 当时间线进行到3刻时，停止执行并归零
execute @e[name=soundPlayer,scores={active=!0}] ~~~ scoreboard players add @s time 1
execute @e[name=soundPlayer,scores={active=!0,time=3..}] ~~~ scoreboard players set @s active 0
execute @e[name=soundPlayer,scores={time=3..}] ~~~ scoreboard players set @s time 0

## 1 | random.orb | 音调1
execute @e[name=soundPlayer,scores={active=1,time=2}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 1

## 2 | random.orb | 音调2
execute @e[name=soundPlayer,scores={active=2,time=2}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2

## 3 | mob.villager.yes | 音调1
execute @e[name=soundPlayer,scores={active=3,time=2}] ~~~ execute @a ~~~ playsound mob.villager.yes @s ~~~ 1 1

## 4 | mob.villager.no | 音调1
execute @e[name=soundPlayer,scores={active=4,time=2}] ~~~ execute @a ~~~ playsound mob.villager.no @s ~~~ 1 1

## 5 | mob.cat.meow | 音调0.75
execute @e[name=soundPlayer,scores={active=5,time=2}] ~~~ execute @a ~~~ playsound mob.cat.meow @s ~~~ 1 0.75

## 6 | random.anvil_break | 音调0.5
execute @e[name=soundPlayer,scores={active=6,time=2}] ~~~ execute @a ~~~ playsound random.anvil_break @s ~~~ 1 0.5

## 7 | random.levelup | 音调1
execute @e[name=soundPlayer,scores={active=7,time=2}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 1

## 8 | random.levelup | 音调2
execute @e[name=soundPlayer,scores={active=8,time=2}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 2

## 9 | smithing_table.use | 音调1
execute @e[name=soundPlayer,scores={active=9,time=2}] ~~~ execute @a ~~~ playsound smithing_table.use @s ~~~ 1 1

## 10 | hard_achievement_complete | 音调1，音量0.5
execute @e[name=soundPlayer,scores={active=10,time=2}] ~~~ execute @a ~~~ playsound hard_achievement_complete @s ~~~ 0.5 1

## 11 | random.pop | 音调1
execute @e[name=soundPlayer,scores={active=11,time=2}] ~~~ execute @a ~~~ playsound random.pop @s ~~~ 1 1

## 12 | random.anvil_land | 音调1
execute @e[name=soundPlayer,scores={active=12,time=2}] ~~~ execute @a ~~~ playsound random.anvil_land @s ~~~ 1 1
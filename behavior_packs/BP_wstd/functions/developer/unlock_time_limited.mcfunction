# 解锁所有关卡

## 未开启开发者功能时
execute @e[name=developerMode,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.not_developer_mode"}]}

## 开启开发者功能时
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=timeLimitedAdvancement,scores={stats=40}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.level_unlocked"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=timeLimitedAdvancement,scores={stats=40}] ~~~ scoreboard players set @e[name=soundPlayer] active 4

execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=timeLimitedAdvancement,scores={stats=!40}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.developer.time_limited_level_unlocked"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=timeLimitedAdvancement,scores={stats=!40}] ~~~ scoreboard players set @e[name=soundPlayer] active 3
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=timeLimitedAdvancement,scores={stats=!40}] ~~~ scoreboard players set @e[name=timeLimitedAdvancement] stats 40
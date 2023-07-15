# 解锁所有关卡

## 未开启开发者功能时
execute @e[name=developerMode,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.not_developer_mode"}]}

## 开启开发者功能时
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=easterEggAdvancement,scores={stats=50}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.level_unlocked"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=easterEggAdvancement,scores={stats=50}] ~~~ scoreboard players set @e[name=soundPlayer] active 4

execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=easterEggAdvancement,scores={stats=!50}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.developer.easter_egg_level_unlocked"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=easterEggAdvancement,scores={stats=!50}] ~~~ scoreboard players set @e[name=soundPlayer] active 3
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=easterEggAdvancement,scores={stats=!50}] ~~~ scoreboard players set @e[name=easterEggAdvancement] stats 50
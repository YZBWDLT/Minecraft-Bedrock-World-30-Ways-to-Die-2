## 未开启开发者功能时
execute @e[name=developerMode,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.not_developer_mode"}]}

## 开启开发者功能时
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.developer.reset_record"}]}

execute @e[name=developerMode,scores={settings=1}] ~~~ scoreboard players set recordTick record 2000000000
execute @e[name=developerMode,scores={settings=1}] ~~~ scoreboard players set recordMinute record 0
execute @e[name=developerMode,scores={settings=1}] ~~~ scoreboard players set recordSecond record 0
execute @e[name=developerMode,scores={settings=1}] ~~~ scoreboard players set mapCompletedTimes record 0
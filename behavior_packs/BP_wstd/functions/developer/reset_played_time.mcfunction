## 未开启开发者功能时
execute @e[name=developerMode,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.not_developer_mode"}]}

## 开启开发者功能时
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.developer.reset_played_time"}]}

execute @e[name=developerMode,scores={settings=1}] ~~~ scoreboard players set @e[name=playedMinute] time 0
execute @e[name=developerMode,scores={settings=1}] ~~~ scoreboard players set @e[name=playedSecond] time 0
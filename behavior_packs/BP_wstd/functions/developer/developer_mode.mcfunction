# 启用/禁用开发模式

scoreboard players add @e[name=developerMode] settings 1
execute @e[name=developerMode,scores={settings=2}] ~~~ scoreboard players set @e[name=developerMode] settings 0

execute @e[name=developerMode,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.settings.developer_mode.off"}]}
execute @e[name=developerMode,scores={settings=0}] ~~~ clear @a ender_pearl
execute @e[name=developerMode,scores={settings=0}] ~~~ clear @a netherbrick
execute @e[name=developerMode,scores={settings=0}] ~~~ setworldspawn 28 9 27

execute @e[name=developerMode,scores={settings=1}] ~~~ scoreboard players set @a oplevel 2
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.settings.developer_mode.on"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ gamemode creative @a
execute @e[name=developerMode,scores={settings=1}] ~~~ setworldspawn 7 5 7
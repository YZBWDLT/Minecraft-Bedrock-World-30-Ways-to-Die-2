# 启用/禁用开发模式

scoreboard players add @e[name=developerMode] settings 1
execute @e[name=developerMode,scores={settings=2}] ~~~ scoreboard players set @e[name=developerMode] settings 0

execute @e[name=developerMode,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.developer_mode.off"}]}
execute @e[name=developerMode,scores={settings=0}] ~~~ clear @a minecraft:ender_pearl
execute @e[name=developerMode,scores={settings=0}] ~~~ clear @a minecraft:netherbrick

execute @e[name=developerMode,scores={settings=1}] ~~~ scoreboard players set @a oplevel 2
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.developer_mode.on.line1"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.developer_mode.on.line2"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ gamemode creative @a
execute @e[name=developerMode,scores={settings=1}] ~~~ setworldspawn 7 5 7
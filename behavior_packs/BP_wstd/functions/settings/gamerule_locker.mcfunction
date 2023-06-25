# 解除或锁定 游戏规则限制
scoreboard players add @e[name=gameruleLocker] settings 1
scoreboard players set @e[name=gameruleLocker,scores={settings=!0..1}] settings 0

execute @e[name=gameruleLocker,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"settings.gamerule.unlocked"}]}
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"settings.gamerule.locked"}]}
execute @e[name=gameruleLocker,scores={settings=0}] ~~~ scoreboard players set @e[name=soundPlayer] active 4
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ scoreboard players set @e[name=soundPlayer] active 3
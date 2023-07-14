# 解除或锁定 游戏规则限制
scoreboard players add @e[name=isNetease] settings 1
scoreboard players set @e[name=isNetease,scores={settings=!0..1}] settings 0

execute @e[name=isNetease,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"settings.is_netease.international"}]}
execute @e[name=isNetease,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"settings.is_netease.netease"}]}

execute @e[name=isNetease,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.open.music.on"}]}
execute @e[name=isNetease,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.open.music.off"}]}

scoreboard players set @e[name=soundPlayer] active 11
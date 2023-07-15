# 控制第30关对话是否开启

## 第29关结束前，在0和2之间切换
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!29..30}] ~~~ scoreboard players add @e[name=level30Dialogue] settings 2
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!29..30}] ~~~ scoreboard players set @e[name=level30Dialogue,scores={settings=!0,settings=!2}] settings 0

execute @e[name=levelAdvancement,scores={stats=0..32,stats=!29..30}] ~~~ execute @e[name=level30Dialogue,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.settings.level_30_dialogue.disabled"}]}
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!29..30}] ~~~ execute @e[name=level30Dialogue,scores={settings=2}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.settings.level_30_dialogue.enabled"}]}
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!29..30}] ~~~ execute @e[name=level30Dialogue,scores={settings=0}] ~~~ scoreboard players set @e[name=soundPlayer] active 4
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!29..30}] ~~~ execute @e[name=level30Dialogue,scores={settings=2}] ~~~ scoreboard players set @e[name=soundPlayer] active 3

## 第29关结束后，在0和1之间切换
execute @e[name=levelAdvancement,scores={stats=29..30}] ~~~ scoreboard players add @e[name=level30Dialogue] settings 1
execute @e[name=levelAdvancement,scores={stats=29..30}] ~~~ scoreboard players set @e[name=level30Dialogue,scores={settings=!0..1}] settings 0

execute @e[name=levelAdvancement,scores={stats=29..30}] ~~~ execute @e[name=level30Dialogue,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.settings.level_30_dialogue.disabled"}]}
execute @e[name=levelAdvancement,scores={stats=29..30}] ~~~ execute @e[name=level30Dialogue,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.settings.level_30_dialogue.enabled"}]}
execute @e[name=levelAdvancement,scores={stats=29..30}] ~~~ execute @e[name=level30Dialogue,scores={settings=0}] ~~~ scoreboard players set @e[name=soundPlayer] active 4
execute @e[name=levelAdvancement,scores={stats=29..30}] ~~~ execute @e[name=level30Dialogue,scores={settings=1}] ~~~ scoreboard players set @e[name=soundPlayer] active 3
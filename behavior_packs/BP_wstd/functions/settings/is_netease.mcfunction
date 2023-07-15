# 解除或锁定 游戏规则限制
scoreboard players add @e[name=isNetease] settings 1
scoreboard players set @e[name=isNetease,scores={settings=!0..1}] settings 0

execute @e[name=isNetease,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.settings.adaptive_mode.international"}]}
execute @e[name=isNetease,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.settings.adaptive_mode.netease"}]}

execute @e[name=isNetease,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.open.music.on"}]}
execute @e[name=isNetease,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.open.music.off"}]}

# 当调整为网易模式后，禁止玩家使用英语
execute @e[name=isNetease,scores={settings=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ function settings/language/chinese

scoreboard players set @e[name=soundPlayer] active 11
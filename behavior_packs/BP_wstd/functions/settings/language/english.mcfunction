## 如果为网易模式，则抛出错误
execute @e[name=isNetease,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.is_netease_version"}]}

execute @e[name=isNetease,scores={settings=0}] ~~~ scoreboard players set @e[name=language] settings 1
execute @e[name=isNetease,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"text":"§bThe game has been set to English. Please switch your game language to English to prevent a mixture of Chinese and English."}]}

# 记分板同步
execute @e[name=isNetease,scores={settings=0}] ~~~ execute @e[name=level,scores={backend=!-20..-16}] ~~~ scoreboard objectives setdisplay sidebar display1 ascending

scoreboard players set @e[name=soundPlayer] active 1
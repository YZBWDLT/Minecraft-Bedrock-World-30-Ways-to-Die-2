scoreboard players set @e[name=language] settings 1
tellraw @a {"rawtext":[{"text":"§bThe game has been set to English. Please switch your game language to English to prevent a mixture of Chinese and English."}]}
scoreboard players set @e[name=soundPlayer] active 1

# 记分板同步
execute @e[name=level,scores={backend=!-20..-16}] ~~~ scoreboard objectives setdisplay sidebar display1 ascending
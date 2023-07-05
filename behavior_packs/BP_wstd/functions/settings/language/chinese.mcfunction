scoreboard players set @e[name=language] settings 0
tellraw @a {"rawtext":[{"text":"§b游戏已设置成中文，请将您的游戏语言也调为中文，防止中英文混杂情况产生。"}]}
scoreboard players set @e[name=soundPlayer] active 1

# 记分板同步
scoreboard objectives setdisplay sidebar display ascending
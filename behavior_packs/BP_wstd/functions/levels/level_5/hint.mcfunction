#  当玩家进度小于当前关卡时（即为第一次游玩此关时），且在本关未使用过提示时，记录下使用情况
## 记录所有提示使用数目
execute @e[name=levelAdvancement,scores={stats=4}] ~~~ execute @e[name=lvl5Hint,scores={stats=0}] ~~~ scoreboard players add @e[name=allHintUsed] stats 1
## 记录本关提示使用情况
execute @e[name=levelAdvancement,scores={stats=4}] ~~~ scoreboard players set @e[name=lvl5Hint] stats 1
## 重置记分板
function system/display_scoreboards/hint

# 提示内容
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.hint.level_5"}]}
# 当玩家进度小于当前关卡时（即为第一次游玩此关时），且在本关未使用过攻略时，记录下使用情况
## 记录所有攻略使用数目
execute @e[name=levelAdvancement,scores={stats=25}] ~~~ execute @e[name=lvl26Strategy,scores={stats=0}] ~~~ scoreboard players add @e[name=allStrategyUsed] stats 1
## 记录本关攻略使用情况
execute @e[name=levelAdvancement,scores={stats=25}] ~~~ scoreboard players set @e[name=lvl26Strategy] stats 1
## 重置显示记分板
function system/display_scoreboards/strategy

# 攻略内容
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.strategy.level_26"}]}
#  当玩家进度小于当前关卡时（即为第一次游玩此关时），且在本关未使用过跳过时，记录下使用情况
## 记录所有跳过使用数目
execute @e[name=levelAdvancement,scores={stats=12}] ~~~ execute @e[name=lvl13Skip,scores={stats=0}] ~~~ scoreboard players add @e[name=allSkipUsed] stats 1
## 记录本关跳过使用情况
execute @e[name=levelAdvancement,scores={stats=12}] ~~~ scoreboard players set @e[name=lvl13Skip] stats 1
## 重置记分板
function system/display_scoreboards/skip

## 直接清除玩家
kill @a
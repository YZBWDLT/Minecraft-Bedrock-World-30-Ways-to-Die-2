## 不满足特定条件时
execute @e[name=level,scores={backend=!51..60}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.diy_levels.not_edit_mode"}]}
execute @e[name=level,scores={backend=!51..60}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.invalid_level_id.not_expected","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=level]"}}]}}]}
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.diy_levels.not_edit_mode"}]}
## 音效
scoreboard players set @e[name=soundPlayer] active 11
## 清除玩家的物品并将玩家传送到等待区，设定等待时间为5秒
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ scoreboard players set @e[name=diyIsLoading] backend 105

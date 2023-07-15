## 不满足特定条件时
execute @e[name=level,scores={backend=!51..60}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.diy_levels.not_edit_mode"}]}
execute @e[name=level,scores={backend=!51..60}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.invalid_level_id.not_expected","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=level]"}}]}}]}
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.diy_levels.not_edit_mode"}]}

## 保存结构
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ structure load diy_command_system -107 1 -21

## 提示语
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.item.reset_command_system"}]} 

## 音效
scoreboard players set @e[name=soundPlayer] active 11

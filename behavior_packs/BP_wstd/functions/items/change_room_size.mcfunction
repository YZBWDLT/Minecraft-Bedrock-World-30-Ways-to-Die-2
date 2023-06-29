## 不满足特定条件时

execute @e[name=level,scores={backend=!51..60}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.diy_levels.not_edit_mode"}]}
execute @e[name=level,scores={backend=!51..60}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.invalid_level_id.not_expected","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=level]"}}]}}]}
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.diy_levels.not_edit_mode"}]}

## 清空原房间
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ fill -102 15 -11 -131 31 -40 air

## 满足特定条件时，轮换小中大关卡
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ scoreboard players add @e[name=diyRoomSize] backend 1
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ scoreboard players set @e[name=diyRoomSize,scores={backend=!0..2}] backend 0

## 加载房间
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @e[name=diyRoomSize,scores={backend=0}] ~~~ structure load small_room -121 15 -30
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @e[name=diyRoomSize,scores={backend=1}] ~~~ structure load middle_room -121 15 -30
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @e[name=diyRoomSize,scores={backend=2}] ~~~ structure load large_room -126 15 -30

## 提示语
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @e[name=diyRoomSize,scores={backend=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.diy_levels.change_room_size.small"}]} 
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @e[name=diyRoomSize,scores={backend=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.diy_levels.change_room_size.middle"}]} 
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @e[name=diyRoomSize,scores={backend=2}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.diy_levels.change_room_size.large"}]} 

## 音效
scoreboard players set @e[name=soundPlayer] active 11

# 清空多余实体
kill @e[type=!player,family=!marker,type=!wstd:text_display]
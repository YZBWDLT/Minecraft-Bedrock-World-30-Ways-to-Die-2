# ===== 变换房间大小 =====
# 玩家使用物品“更改房间大小”时执行，执行者为玩家

## 清空原房间
fill -102 15 -11 -131 31 -40 air

## 满足特定条件时，轮换小中大关卡
scoreboard players add diyLevels.roomSize data 1
execute unless score diyLevels.roomSize data matches 0..2 run scoreboard players set diyLevels.roomSize data 0

## 加载房间
execute if score diyLevels.roomSize data matches 0 run structure load diy_levels:small_room -121 15 -30
execute if score diyLevels.roomSize data matches 1 run structure load diy_levels:middle_room -121 15 -30
execute if score diyLevels.roomSize data matches 2 run structure load diy_levels:large_room -126 15 -30

## 提示语
execute if score diyLevels.roomSize data matches 0 run tellraw @s {"rawtext":[{"translate":"chat.item.change_room_size.small"}]} 
execute if score diyLevels.roomSize data matches 1 run tellraw @s {"rawtext":[{"translate":"chat.item.change_room_size.middle"}]} 
execute if score diyLevels.roomSize data matches 2 run tellraw @s {"rawtext":[{"translate":"chat.item.change_room_size.large"}]} 

## 清除多余实体
kill @e[type=!player,family=!marker,type=!wstd:text_display]

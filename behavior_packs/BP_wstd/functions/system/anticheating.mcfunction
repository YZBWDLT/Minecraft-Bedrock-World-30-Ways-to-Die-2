# ===== 反作弊系统 =====
# 该系统用于判断玩家是否作弊，以及在开发者模式下用于按需更改游戏模式

# --- 非开发者模式下 ---

## ~ 游戏模式限制 ~
## 如果地图权限等级不为0，关闭游戏模式的限制。

### 在浏览地图时 | 改为强制旁观模式
execute if score oplevel settings matches 0 if score level data matches -9 as @a[m=!spectator] run tellraw @s {"rawtext":[{"translate":"chat.error.cheating.line1"},{"text":"\n"},{"translate":"chat.error.cheating.line2"}]}
execute if score oplevel settings matches 0 if score level data matches -9 as @a[m=!spectator] run gamemode spectator @s
### 未在浏览地图时 | 改为强制冒险模式
### 判断玩家是否处于DIY的编辑模式，如果不是则强制改模式
execute if score oplevel settings matches 0 unless score level data matches -9 run scoreboard players set anticheating.isdiyLevels.isEditMode data 0
execute if score oplevel settings matches 0 unless score level data matches -9 if score level data matches 51..60 if score diyLevels.isEditMode data matches 1 run scoreboard players set anticheating.isdiyLevels.isEditMode data 1
execute if score oplevel settings matches 0 unless score level data matches -9 if score anticheating.isdiyLevels.isEditMode data matches 0 as @a[m=!adventure] run tellraw @s {"rawtext":[{"translate":"chat.error.cheating.line1"},{"text":"\n"},{"translate":"chat.error.cheating.line2"}]}
execute if score oplevel settings matches 0 unless score level data matches -9 if score anticheating.isdiyLevels.isEditMode data matches 0 as @a[m=!adventure] run gamemode adventure @s

## ~ 防特性 ~
## 如果不是第28关（该关卡就是用船过的），则清除船
execute unless score level data matches 28 if entity @e[family=boat] as @a run tellraw @s {"rawtext":[{"translate":"chat.anti_cheating.boat_not_allowed"}]}
execute unless score level data matches 28 as @e[family=boat] run kill @s
## 如果不是第13关第3部分（该关卡采用自己的防末影珍珠机制）和第18关（该关卡有进度），则清除末影珍珠
execute unless score level data matches 31 unless score level data matches 18 if entity @e[family=ender_pearl] as @a run tellraw @s {"rawtext":[{"translate":"chat.anti_cheating.ender_pearl_not_allowed"}]}
execute unless score level data matches 31 unless score level data matches 18 as @e[family=ender_pearl] run kill @s
## 如果是自定义关卡且玩家在自定义关卡区域内，移除传送门（防止玩家进入）
execute if score level data matches 51..60 as @a[x=-132,y=0,z=-41,dx=31,dy=31,dz=31] at @s run fill ~-5~-5~-5~5~5~5 air replace portal
execute if score level data matches 51..60 as @a[x=-132,y=0,z=-41,dx=31,dy=31,dz=31] at @s run fill ~-5~-5~-5~5~5~5 air replace end_portal

# --- 开发者模式下 ---

## 快捷游戏模式更改
execute if score developerMode settings matches 1 run function lib/modify_data/developer_gamemode

## 通关时间记为-1（作废）
execute if score developerMode settings matches 1 run scoreboard players set endTime.tick record -1

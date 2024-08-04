# ===== 关卡完成 =====

# --- 基本 ---

## 状态
## (是否禁用时间线？举例：function lib/modify_states/timeline/disable
## (是否禁用剧情线？举例：function lib/modify_states/dialogue/disable
## (是否禁用关卡延迟？举例：function lib/modify_states/level_complete_delay/disable

## 通用函数
function lib/modify_data/level/complete

## 自定义死亡消息
## (设置本关的自定义死亡消息，举例：execute as @a run tellraw @s {"rawtext":[{"translate":"chat.deathmessage.level_1","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 下一关 ---

## 传送玩家到下一关
## (设置将玩家传送到下一关的入口，举例：tp @a -9 10 27 facing -9 10 30

## 解锁下一关 | 通用函数要求该部分必须在通用函数之前执行
## (设置关卡进度为当前进度，举例：execute if score progress.level record matches 6 run scoreboard players set progress.level record 7

# --- 特殊内容 ---
# (若关卡在start中使用了特别的变量、gamerule等，需将其归回默认值

## 重置gamerule
## (设置停用关卡独有的gamerule，举例：gamerule showdeathmessages false
## 停用特殊分值
## (设置停用关卡独有的功能检测，举例：scoreboard players reset level7.enteredNether data
## 停用物品检测
## (设置停用物品检测？举例：scoreboard players reset level9.itemTestCraftingTable active

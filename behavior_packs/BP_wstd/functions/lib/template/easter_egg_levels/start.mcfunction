# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
## (设置关卡的ID，举例：scoreboard players set level data 47

## 状态（关卡延迟） | 通用函数要求：需将本命令提前于通用函数执行
## (是否启用关卡延迟？举例：function lib/modify_states/level_complete_delay/enable

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
## (是否启用时间线？举例：function lib/modify_states/timeline/enable_6
## (是否启用剧情线？举例：function lib/modify_states/dialogue/enable_lock_6

## 重置关卡房间
## (设置关卡的重置位置和内容，举例：structure load easter_egg:level_1 39 20 43

## 给予玩家辅助功能物品
## (是否给予玩家提示和攻略？举例：execute as @a run function lib/modify_data/item/aux_functions
## (是否给予玩家跳过？举例：execute as @a run function lib/modify_data/item/aux_functions_hard

# --- 玩家 ---

## 传送玩家
## (设置玩家将传送于何处，举例：tp @a 47 22 51 facing 40 22 51

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
## (显示主标题，举例：titleraw @a title {"rawtext":[{"translate":"title.easter_egg_1"}]}
## (显示副标题，举例：titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_1"}]}

# --- 特殊内容 ---

## 关卡gamerule
## (是否启用关卡独有的gamerule？举例：gamerule showdeathmessages true
## 特殊分值检测
## (是否启用关卡独有的功能检测？这可以用于时间线中。举例：scoreboard players set easterEgg7.enteredNether data 0
## 物品检测
## (是否启用物品检测？举例：scoreboard players set easterEgg9.itemTestCraftingTable active 1
## 展示文本
## (是否启用中文展示文本？举例：execute if score language settings matches 0 run function levels/.../text_display/chinese
## (是否启用英文展示文本？举例：execute if score language settings matches 1 run function levels/.../text_display/english

# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 20

## 状态（关卡延迟） | 通用函数要求：需将本命令提前于通用函数执行
function lib/modify_states/level_complete_delay/enable

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6

## 重置关卡房间
structure load mainline:level_20 -81 20 80

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions_hard

# --- 玩家 ---

## 传送玩家
tp @a -72 22 87 facing -80 22 81

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.level_20"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_20"}]}

# --- 特殊内容 ---

## 物品检测
scoreboard players set level20.itemTestCraftingTable active 1
scoreboard players set level20.itemTestBrewingStand active 1
scoreboard players set level20.itemTestWaterBucket active 1
## 展示文本
execute if score language settings matches 0 run function levels/mainline/level_20/text_display/chinese
execute if score language settings matches 1 run function levels/mainline/level_20/text_display/english

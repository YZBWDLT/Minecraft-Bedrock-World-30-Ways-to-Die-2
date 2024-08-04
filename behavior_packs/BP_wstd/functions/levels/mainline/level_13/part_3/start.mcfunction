# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 32

## 状态（关卡延迟） | 通用函数要求：需将本命令提前于通用函数执行
function lib/modify_states/level_complete_delay/enable

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6

## 重置关卡房间
structure load mainline:level_13_3 -54 20 55

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions_hard

# --- 玩家 ---

## 传送玩家
tp @a -46 22 63 facing -53 22 59

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"§1"}]}
titleraw @a subtitle {"rawtext":[{"translate":"title.level_13.part_3"}]}

# --- 特殊内容 ---

## 特殊分值检测
scoreboard players set level13.redstoneActivatedTimes data 0
## 展示文本
execute if score language settings matches 0 run function levels/mainline/level_13/part_3/text_display/chinese
execute if score language settings matches 1 run function levels/mainline/level_13/part_3/text_display/english

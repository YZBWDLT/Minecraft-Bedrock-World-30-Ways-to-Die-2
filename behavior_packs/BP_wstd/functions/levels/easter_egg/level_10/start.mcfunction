# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 50

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6

## 重置关卡房间
structure load easter_egg:level_10 35 77 -50
structure load easter_egg:level_10_1 22 10 -50 0_degrees none layer_by_layer 5.00

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions

# --- 玩家 ---

## 传送玩家
tp @a 43 79 -45 facing 23 79 -45

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.easter_egg_10"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_10"}]}

# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 43

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6

## 重置关卡房间
structure load easter_egg:level_3 -55 20 -50
structure load easter_egg:level_3_1 -95 8 -53

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions

# --- 玩家 ---

## 传送玩家
tp @a -47 22 -42 facing -54 22 -49

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.easter_egg_3"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_3"}]}

# --- 特殊内容 ---

## 特殊分值检测
scoreboard players set easterEgg3.finishedParkour data 0

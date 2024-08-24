# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 17

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6

## 重置关卡房间
execute if score language data matches 0 run structure load mainline:level_17 -2 20 80
execute if score language data matches 1 run structure load mainline:level_17_en -2 20 80

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions

# --- 玩家 ---

## 传送玩家
tp @a 6 22 88 facing -1 22 81

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.level_17"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_17"}]}

# --- 特殊内容 ---

## 若为中国版，直接给予刷怪蛋 | 中国版检测箱子存在一个bug，只有两个箱子都因为打开而更新状态之后才能成功检测。有病。

execute if score isNetease data matches 1 run function levels/mainline/level_17/events/clear_chest

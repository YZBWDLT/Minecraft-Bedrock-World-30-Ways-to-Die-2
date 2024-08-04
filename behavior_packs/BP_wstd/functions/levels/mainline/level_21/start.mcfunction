# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 21

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6

## 重置关卡房间
structure load mainline:level_21 37 20 92

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions_hard

# --- 玩家 ---

## 传送玩家
tp @a 45 22 100 facing 38 22 93

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.level_21"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_21"}]}

# --- 特殊内容 ---

## 展示文本
execute if score language settings matches 0 run function levels/mainline/level_21/text_display/chinese
execute if score language settings matches 1 run function levels/mainline/level_21/text_display/english

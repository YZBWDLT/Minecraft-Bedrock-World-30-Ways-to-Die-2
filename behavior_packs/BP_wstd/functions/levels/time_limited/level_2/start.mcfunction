# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 37

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_pass_1

## 重置关卡房间
structure load time_limited:level_2 -40 20 -90

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions

# --- 玩家 ---

## 传送玩家
tp @a -32 22 -82 facing -39 22 -89

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.time_limited_2"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.time_limited_2"}]}

# --- 特殊内容 ---

## 展示文本
execute if score language data matches 0 run function levels/time_limited/level_2/text_display/chinese
execute if score language data matches 1 run function levels/time_limited/level_2/text_display/english

# --- 限时关卡 ---

## 设置限时时长
scoreboard players set remainingTime time 75

## 播放音乐
function lib/modify_states/music/timelimit

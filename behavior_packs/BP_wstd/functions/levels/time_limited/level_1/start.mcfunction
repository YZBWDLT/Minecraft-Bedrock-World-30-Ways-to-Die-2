# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 36

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_pass_1

## 重置关卡房间
structure load time_limited:level_1 -55 20 -80

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions
give @a wstd:next_step 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# --- 玩家 ---

## 传送玩家
tp @a -47 22 -75 facing -54 22 -75
## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.time_limited_1"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.time_limited_1"}]}

# --- 特殊内容 ---

## 给予药效
effect @a resistance 36000 9 true
## 展示文本
execute if score language data matches 0 run function levels/time_limited/level_1/text_display/chinese
execute if score language data matches 1 run function levels/time_limited/level_1/text_display/english

# --- 限时关卡 ---

## 设置限时时长
scoreboard players set remainingTime time 550
## 播放音乐
function lib/modify_states/music/timelimit

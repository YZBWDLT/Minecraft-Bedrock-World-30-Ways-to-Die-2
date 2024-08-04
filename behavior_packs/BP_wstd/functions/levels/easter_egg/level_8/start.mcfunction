# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 48

## 状态（关卡延迟） | 通用函数要求：需将本命令提前于通用函数执行
function lib/modify_states/level_complete_delay/enable

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_pass_1

## 重置关卡房间
structure load easter_egg:level_8 -10 20 -70
structure load easter_egg:level_8_1 -3 10 -69

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions

# --- 玩家 ---

## 传送玩家
tp @a -2 22 -68 facing -9 22 -61

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.easter_egg_8"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_8"}]}

# --- 特殊内容 ---

## 展示文本
execute if score language settings matches 0 run function levels/easter_egg/level_8/text_display/chinese
execute if score language settings matches 1 run function levels/easter_egg/level_8/text_display/english

# --- 限时关卡 ---

## 设置限时时长
scoreboard players set remainingTime time 180

## 播放音乐
function lib/modify_states/music/timelimit

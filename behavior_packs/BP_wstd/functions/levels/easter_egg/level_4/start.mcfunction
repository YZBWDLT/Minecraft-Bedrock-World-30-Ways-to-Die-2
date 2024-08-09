# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 44

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6
function lib/modify_states/dialogue/disable

## 重置关卡房间
structure load easter_egg:level_4 -25 20 -50

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions

# --- 玩家 ---

## 传送玩家
tp @a -17 22 -45 facing -24 22 -45

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.easter_egg_4"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_4"}]}

# --- 特殊内容 ---

## 特殊分值检测
scoreboard players set easterEgg4.likedTimes data 0
## 展示文本
execute if score language data matches 0 run function levels/easter_egg/level_4/text_display/chinese
execute if score language data matches 1 run function levels/easter_egg/level_4/text_display/english

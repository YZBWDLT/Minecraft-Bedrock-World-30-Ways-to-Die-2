# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 10

## 状态（关卡延迟） | 通用函数要求：需将本命令提前于通用函数执行
function lib/modify_states/level_complete_delay/enable

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6
function lib/modify_states/dialogue/disable

## 重置关卡房间
structure load mainline:level_10 29 12 -21

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions

# --- 玩家 ---

## 传送玩家
tp @s 38 14 -12 facing 32 14 -18

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.level_10"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_10"}]}

# --- 特殊内容 ---

## 物品检测
scoreboard players set level10.itemTestBlackBed active 1
scoreboard players set level10.itemTestBrownBed active 1
scoreboard players set level10.itemTestGrayBed active 1
scoreboard players set level10.itemTestLightGrayBed active 1
scoreboard players set level10.itemTestPinkBed active 1
scoreboard players set level10.itemTestWhiteBed active 1

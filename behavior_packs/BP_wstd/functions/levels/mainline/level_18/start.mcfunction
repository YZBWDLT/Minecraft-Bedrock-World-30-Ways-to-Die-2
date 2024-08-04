# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 18

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6

## 重置关卡房间
structure load mainline:level_18 -28 20 80

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions

# --- 玩家 ---

## 传送玩家
tp @a -20 22 88 facing -27 22 81

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.level_18"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_18"}]}

# --- 特殊内容 ---

## 特殊分值检测 | 检测玩家掉入虚空
scoreboard players set level18.playerFellIntoVoid data 0
## 展示文本
execute if score language settings matches 0 run function levels/mainline/level_18/text_display/chinese
execute if score language settings matches 1 run function levels/mainline/level_18/text_display/english

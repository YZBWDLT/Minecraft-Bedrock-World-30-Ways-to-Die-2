# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 5

## 通用函数
function lib/modify_data/level/start

## 重置关卡房间
structure load mainline:level_5 -66 20 43

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions

# --- 玩家 ---

## 传送玩家
tp @a -64 22 45 facing -57 22 52

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.level_5"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_5"}]}

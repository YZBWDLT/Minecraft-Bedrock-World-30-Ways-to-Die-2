# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 12

## 通用函数
function lib/modify_data/level/start

## 重置关卡房间
structure load mainline:level_12 25 20 55

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions

# --- 玩家 ---

## 传送玩家
tp @a 33 22 63 facing 26 22 56

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.level_12"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_12"}]}

# --- 特殊内容 ---

## 关卡gamerule | 启用PVP
gamerule pvp true

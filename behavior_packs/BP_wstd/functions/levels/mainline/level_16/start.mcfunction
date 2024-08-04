# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 16

## 通用函数
function lib/modify_data/level/start

## 重置关卡房间
execute if score language settings matches 0 run structure load mainline:level_16 25 20 80
execute if score language settings matches 1 run structure load mainline:level_16_en 25 20 80

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions

# --- 玩家 ---

## 传送玩家
tp @a 33 22 88 facing 26 22 81

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.level_16"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_16"}]}

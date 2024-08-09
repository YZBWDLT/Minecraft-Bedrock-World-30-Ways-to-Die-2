# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 22

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6

## 重置关卡房间
execute if score language data matches 0 run structure load mainline:level_22 10 20 92
execute if score language data matches 1 run structure load mainline:level_22_en 10 20 92

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions_hard

# --- 玩家 ---

## 传送玩家
tp @a 18 22 100 facing 11 22 93

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.level_22"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_22"}]}

# --- 特殊内容 ---

## 特殊分值检测
scoreboard players set level22.endBlockBroken data 0
## 展示文本
execute if score language data matches 0 run function levels/mainline/level_22/text_display/chinese
execute if score language data matches 1 run function levels/mainline/level_22/text_display/english
## 箱子的纸条显示
execute if score language data matches 0 run function levels/mainline/level_22/events/set_paper_zh
execute if score language data matches 1 run function levels/mainline/level_22/events/set_paper_en

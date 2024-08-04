# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 47

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6

## 重置关卡房间
structure load easter_egg:level_7 -40 20 -70

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions

# --- 玩家 ---

## 传送玩家
tp @a -32 22 -62 facing -39 22 -69

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.easter_egg_7"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_7"}]}

# --- 特殊内容 ---

## 物品检测
scoreboard players set easterEgg7.itemTestLever active 1
## 箱子的纸条显示
execute if score language settings matches 0 run function levels/easter_egg/level_7/events/set_paper_zh
execute if score language settings matches 1 run function levels/easter_egg/level_7/events/set_paper_en

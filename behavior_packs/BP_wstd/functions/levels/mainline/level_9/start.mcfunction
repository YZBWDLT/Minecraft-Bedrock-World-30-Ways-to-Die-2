# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 9

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6

## 重置关卡房间
structure load mainline:level_9 -40 20 68

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions

# --- 玩家 ---

## 传送玩家
tp @a -32 22 76 facing -39 22 69

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.level_9"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_9"}]}

# --- 特殊内容 ---

## 物品检测
scoreboard players set level9.itemTestCraftingTable active 1
## 给予玩家防火
effect @a fire_resistance 36000 0 true


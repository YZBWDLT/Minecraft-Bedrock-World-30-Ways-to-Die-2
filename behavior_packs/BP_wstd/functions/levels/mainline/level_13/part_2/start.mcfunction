# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 31

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6
function lib/modify_states/dialogue/disable

## 重置关卡房间
structure load mainline:level_13_2 -28 20 55

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions_hard

# --- 玩家 ---

## 传送玩家
tp @a -20 22 63 facing -26 22 57

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"§1"}]}
titleraw @a subtitle {"rawtext":[{"translate":"title.level_13.part_2"}]}

# --- 特殊内容 ---

## 再度清除一次物品 | 这是为了防止矿车的二次物品掉落
kill @e[type=item]
## 物品检测
scoreboard players set level13.itemTestRedstoneRepeater active 1
## 展示文本
execute if score language settings matches 0 run function levels/mainline/level_13/part_2/text_display/chinese
execute if score language settings matches 1 run function levels/mainline/level_13/part_2/text_display/english

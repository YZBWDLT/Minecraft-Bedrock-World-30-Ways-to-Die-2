# ===== 开启关卡 =====
# 若对话未启用或对话结束后，则开启关卡本体

# --- 基本 ---

## 状态（关卡延迟） | 通用函数要求：需将本命令提前于通用函数执行
function lib/modify_states/level_complete_delay/enable

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_pass_2
function lib/modify_states/dialogue/disable

## 重置关卡房间
structure load mainline:level_30 -132 0 71 0_degrees none layer_by_layer 5

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions_hard

# --- 玩家 ---

## 传送玩家 | 此处是传送到等待区
tp @a -101 66 66 facing -126 66 85

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.level_30"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_30"}]}

# --- 特殊内容 ---

## 给予药效
effect @a resistance 36000 9 true
## 展示文本
execute if score language settings matches 0 run function levels/mainline/level_30/text_display/chinese
execute if score language settings matches 1 run function levels/mainline/level_30/text_display/english
## 关闭第30关对话 | 仅当第30关对话开启时关闭，防止玩家第二次进入第30关仍然有对话
execute if score level30Dialogue settings matches 1 run scoreboard players set level30Dialogue settings 0

# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 7

## 状态（关卡延迟） | 通用函数要求：需将本命令提前于通用函数执行
function lib/modify_states/level_complete_delay/enable

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6

## 重置关卡房间
structure load mainline:level_7 13 20 68

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions

# --- 玩家 ---

## 传送玩家
tp @a 21 22 76 facing 14 22 69

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.level_7"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_7"}]}

# --- 特殊内容 ---

## 关卡gamerule | 采用原版死亡提示
gamerule showdeathmessages true
## 特殊分值检测 | 设定玩家未曾进入过下界
scoreboard players set level7.enteredNether data 0

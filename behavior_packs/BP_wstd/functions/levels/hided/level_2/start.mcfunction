# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 34

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6

## 重置关卡房间
structure load hided:level_2 -61 20 105

# --- 玩家 ---

## 传送玩家
tp @a -42 22 124

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.hided_2"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.hided_2"}]}

# --- 特殊内容 ---

## 提示玩家
tellraw @a {"rawtext":[{"translate":"chat.level.hided_2"}]}
## 特殊分值检测
scoreboard players set hided2.endBlockBroken data 0

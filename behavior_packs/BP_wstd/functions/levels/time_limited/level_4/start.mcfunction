# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 39

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6

## 重置关卡房间
structure load time_limited:level_4 -61 20 -103

## 给予玩家辅助功能物品
execute as @a run function lib/modify_data/item/aux_functions
give @a wstd:next_step 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# --- 玩家 ---

## 传送玩家
tp @a -47 32 -89 facing -60 32 -102

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.time_limited_4"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.time_limited_4"}]}

# --- 特殊内容 ---

## 生成生成点并给予其分值
kill @e[name=entitySummoner]
summon wstd:marker "entitySummoner" -50 26 -98
summon wstd:marker "entitySummoner" -56 26 -98
summon wstd:marker "entitySummoner" -50 26 -92
summon wstd:marker "entitySummoner" -56 26 -92
scoreboard players set @e[name=entitySummoner] data 0
## 特殊分值检测
scoreboard players set timeLimited4.totalScore data 0
## 展示文本
execute if score language data matches 0 run function levels/time_limited/level_4/text_display/chinese
execute if score language data matches 1 run function levels/time_limited/level_4/text_display/english

# --- 限时关卡 ---

## 设置限时时长
scoreboard players set remainingTime time 125

## 播放音乐
function lib/modify_states/music/timelimit

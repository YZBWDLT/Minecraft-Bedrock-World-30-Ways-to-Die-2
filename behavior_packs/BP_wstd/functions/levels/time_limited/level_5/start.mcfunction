# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 40

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6

## 重置关卡房间
structure load time_limited:level_5 -20 20 -105

## 给予玩家辅助功能物品
give @a[hasitem={item=wstd:next_step,quantity=0}] wstd:next_step 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

# --- 玩家 ---

## 传送玩家
tp @a -11 22 -104 facing -19 22 -96

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.time_limited_5"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.time_limited_5"}]}

# --- 特殊内容 ---

## 红石灯重置
fill -21 23 -98 -21 23 -102 air

## 特殊分值检测
scoreboard players set timeLimited5.totalScore data -1

## 展示文本
execute if score language data matches 0 run function levels/time_limited/level_5/text_display/chinese
execute if score language data matches 1 run function levels/time_limited/level_5/text_display/english

# --- 限时关卡 ---

## 设置限时时长
scoreboard players set remainingTime time 350

## 播放音乐
function lib/modify_states/music/timelimit

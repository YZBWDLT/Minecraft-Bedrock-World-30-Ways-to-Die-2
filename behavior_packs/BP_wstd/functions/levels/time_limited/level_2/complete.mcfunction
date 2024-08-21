# ===== 关卡完成 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable

## 解锁下一关 | 通用函数要求该部分必须在通用函数之前执行
execute if score progress.timeLimited record matches 1 run scoreboard players set progress.timeLimited record 2

## 通用函数
function lib/modify_data/level/complete

## 自定义死亡消息
execute as @a run tellraw @s {"rawtext":[{"translate":"chat.deathmessage.time_limited_2","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 下一关 ---

## 传送玩家到下一关
tp @a -56 10 5 facing -56 10 1

# --- 限时关卡 ---

## 恢复音乐 | 设定条件以防止音乐在退出后重新播放
execute if score speedrunMode settings matches 0 run function lib/modify_states/music/maingame

# ===== 完成大师进度 =====
# 大师传奇进度 [这也能速通？]
# 上游进度：神速 master/so_fast

# --- 记录进度已完成 ---

## 记录该进度已完成
scoreboard players set advancement.howCanYouSpeedrun record 1
## 进度数记录+1
scoreboard players add progress.advancement record 1
## 同步记分板
function lib/scoreboard/advancement

# --- 开放下游进度 ---

# --- 提示玩家进度已完成 ---

## 音效
function lib/modify_states/sound/hard_achievement_complete
## 聊天栏
execute as @a run tellraw @s {"rawtext":[{"translate":"%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.legendary","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.master.how_can_you_speedrun"}]}}]}}]}

# --- 特殊内容 ---

## 提示玩家限时关卡已完成
execute if score isNetease data matches 0 run tellraw @a {"rawtext":[{"translate":"chat.completed.time_limited_levels"}]}
execute if score isNetease data matches 1 run tellraw @a {"rawtext":[{"translate":"netease.chat.time_limited_levels_completed"}]}

## 替换玻璃为信标 
setblock -45 9 28 beacon

# ===== 完成彩蛋进度 =====
# 彩蛋普通进度 [好耶！]
# 上游进度：藏得够深的！ easter_egg/easter_egg_found

# --- 记录进度已完成 ---

## 记录该进度已完成
scoreboard players set advancement.yes record 1
## 进度数记录+1
scoreboard players add progress.advancement record 1
## 同步记分板
function lib/scoreboard/advancement

# --- 开放下游进度 ---

# --- 提示玩家进度已完成 ---

## 音效
function lib/modify_states/sound/random_levelup_2
## 聊天栏
execute as @a run tellraw @s {"rawtext":[{"translate":"%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.easter_egg.yes"}]}}]}}]}

# --- 特殊内容 ---

## 提示玩家限时关卡已完成
execute if score isNetease data matches 0 run tellraw @a {"rawtext":[{"translate":"chat.completed.easter_egg_levels"}]}
execute if score isNetease data matches 1 run tellraw @a {"rawtext":[{"translate":"netease.chat.easter_egg_levels_completed"}]}

## 替换玻璃为信标 
setblock -47 9 26 beacon

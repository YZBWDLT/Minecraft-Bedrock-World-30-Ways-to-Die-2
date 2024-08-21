# ===== 完成彩蛋进度 =====
# 彩蛋普通进度 [超级好评]
# 上游进度：藏得够深的！ easter_egg/easter_egg_found

# --- 记录进度已完成 ---

## 记录该进度已完成
scoreboard players set advancement.superLike record 1
## 进度数记录+1
scoreboard players add progress.advancement record 1
## 同步记分板
function lib/scoreboard/advancement

# --- 开放下游进度 ---

## 开放钢铁侠
scoreboard players set advancement.ironman record 0

# --- 提示玩家进度已完成 ---

## 音效
function lib/modify_states/sound/random_levelup_2
## 聊天栏
execute as @a run tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.easter_egg.super_like"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}

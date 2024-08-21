# ===== 完成彩蛋进度 =====
# 彩蛋普通进度 [钢铁侠]
# 上游进度：超级好评 easter_egg/super_like

# --- 记录进度已完成 ---

## 记录该进度已完成
scoreboard players set advancement.ironman record 1
## 进度数记录+1
scoreboard players add progress.advancement record 1
## 同步记分板
function lib/scoreboard/advancement

# --- 开放下游进度 ---

# --- 提示玩家进度已完成 ---

## 音效
function lib/modify_states/sound/hard_achievement_complete
## 聊天栏
execute as @a run tellraw @s {"rawtext":[{"translate":"%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.legendary","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.easter_egg.ironman"}]}}]}}]}

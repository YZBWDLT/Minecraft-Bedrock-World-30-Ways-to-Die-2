# ===== 完成杂项进度 =====
# 杂项普通进度 [是谁？]
# 上游进度：让我康康 miscellaneous/let_me_see

# --- 记录进度已完成 ---

## 记录该进度已完成
scoreboard players set advancement.who record 1
## 进度数记录+1
scoreboard players add progress.advancement record 1
## 同步记分板
function lib/scoreboard/advancement

# --- 开放下游进度 ---

## DIY？！
scoreboard players set advancement.diy record 0

# --- 提示玩家进度已完成 ---

## 音效
function lib/modify_states/sound/random_levelup_2
## 聊天栏
execute as @a run tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.miscellaneous.who"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}

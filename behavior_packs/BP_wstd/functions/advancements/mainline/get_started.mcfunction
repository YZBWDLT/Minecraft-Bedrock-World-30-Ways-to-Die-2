# ===== 完成主线进度 =====
# 主线普通进度 [初来乍到]
# 上游进度：无

# --- 记录进度已完成 ---

## 记录该进度已完成
scoreboard players set advancement.getStarted record 1
## 进度数记录+1
scoreboard players add progress.advancement record 1
## 同步记分板
function lib/scoreboard/advancement

# --- 开放下游进度 ---

## 小试牛刀
scoreboard players set advancement.moreSkilled record 0

# --- 提示玩家进度已完成 ---

## 音效
function lib/modify_states/sound/random_levelup_2
## 聊天栏
execute as @a run tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.mainline.get_started"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}

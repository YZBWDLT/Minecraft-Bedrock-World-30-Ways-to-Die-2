# ===== 完成大师进度 =====
# 大师稀有进度 [神速]
# 上游进度：藏得够深的！ easter_egg/easter_egg_found

# --- 记录进度已完成 ---

## 记录该进度已完成
scoreboard players set advancement.soFast record 1
## 进度数记录+1
scoreboard players add progress.advancement record 1
## 同步记分板
function lib/scoreboard/advancement

# --- 开放下游进度 ---

## 这也能速通？
scoreboard players set advancement.howCanYouSpeedrun record 0

# --- 提示玩家进度已完成 ---

## 音效
function lib/modify_states/sound/smithing_table_use
## 聊天栏
execute as @a run tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.rare","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.master.so_fast"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}

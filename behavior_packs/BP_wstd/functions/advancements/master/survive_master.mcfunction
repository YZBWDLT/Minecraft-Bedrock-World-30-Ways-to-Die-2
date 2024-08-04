# ===== 完成大师进度 =====
# 大师稀有进度 [生存家]
# 上游进度：半程旅途 mainline/half_way

# --- 记录进度已完成 ---

## 记录该进度已完成
scoreboard players set advancement.surviveMaster record 1
## 进度数记录+1
scoreboard players add progress.advancement record 1
## 同步记分板
function lib/scoreboard/advancement

# --- 开放下游进度 ---

## 绿宝石！
scoreboard players set advancement.emerald record 0

# --- 提示玩家进度已完成 ---

## 音效
function lib/modify_states/sound/smithing_table_use
## 聊天栏
execute as @a run tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.rare","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.master.survive_master"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}

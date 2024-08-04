# ===== 完成杂项进度 =====
# 杂项普通进度 [让我康康]
# 上游进度：无

# --- 记录进度已完成 ---

## 记录该进度已完成
scoreboard players set advancement.letMeSee record 1
## 进度数记录+1
scoreboard players add progress.advancement record 1
## 同步记分板
function lib/scoreboard/advancement

# --- 开放下游进度 ---

## 庆典
scoreboard players set advancement.celebration record 0
## 是谁
scoreboard players set advancement.who record 0

# --- 提示玩家进度已完成 ---

## 音效
function lib/modify_states/sound/random_levelup_2
## 聊天栏
execute as @a run tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.miscellaneous.let_me_see"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}

# --- 特殊内容 ---

## 刷新展示框 | 因该进度为玩家进入进度中心时获取，因此需要刷新展示框使玩家能看到
execute if score language settings matches 0 run function halls/record/advancement/events/load_data_chinese
execute if score language settings matches 1 run function halls/record/advancement/events/load_data_english

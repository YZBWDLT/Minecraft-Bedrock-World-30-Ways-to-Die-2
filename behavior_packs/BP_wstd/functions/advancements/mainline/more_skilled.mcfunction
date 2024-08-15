# ===== 完成主线进度 =====
# 主线普通进度 [小试牛刀]
# 上游进度：初来乍到 mainline/get_started

# --- 记录进度已完成 ---

## 记录该进度已完成
scoreboard players set advancement.moreSkilled record 1
## 进度数记录+1
scoreboard players add progress.advancement record 1
## 同步记分板
function lib/scoreboard/advancement

# --- 开放下游进度 ---

## 另辟蹊径
scoreboard players set advancement.anotherWay record 0
## 半程旅途
scoreboard players set advancement.halfWay record 0
## 红石家
scoreboard players set advancement.redstoneMaster record 0

# --- 提示玩家进度已完成 ---

## 音效
function lib/modify_states/sound/random_levelup_2
## 聊天栏
execute as @a run tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.mainline.more_skilled"}]}},{"translate":"functions.general.new_advancements_opened"}]}}]}

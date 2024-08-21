# ===== 完成主线进度 =====
# 主线普通进度 [半途旅程]
# 上游进度：小试牛刀 mainline/get_started

# --- 记录进度已完成 ---

## 记录该进度已完成
scoreboard players set advancement.halfWay record 1
## 进度数记录+1
scoreboard players add progress.advancement record 1
## 同步记分板
function lib/scoreboard/advancement

# --- 开放下游进度 ---

## 结束了！...吗？
scoreboard players set advancement.theEnd record 0
## 满地的白色生物
scoreboard players set advancement.whiteMobsAnywhere record 0
## 酿造家
scoreboard players set advancement.brewingMaster record 0
## 按钮！
scoreboard players set advancement.button record 0
## 生存家
scoreboard players set advancement.surviveMaster record 0

# --- 提示玩家进度已完成 ---

## 音效
function lib/modify_states/sound/random_levelup_2
## 聊天栏
execute as @a run tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.mainline.half_way"}]}},{"translate":"functions.general.new_advancements_opened"}]}}]}

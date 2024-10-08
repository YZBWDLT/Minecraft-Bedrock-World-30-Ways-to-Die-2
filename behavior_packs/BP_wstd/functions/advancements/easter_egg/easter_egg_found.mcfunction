# ===== 完成彩蛋进度 =====
# 彩蛋普通进度 [藏得够深的！]
# 上游进度：无

# --- 记录进度已完成 ---

## 记录该进度已完成
scoreboard players set advancement.easterEggFound record 1
## 进度数记录+1
scoreboard players add progress.advancement record 1
## 同步记分板
function lib/scoreboard/advancement

# --- 开放下游进度 ---

## 我还以为是跑酷
scoreboard players set advancement.notAParkour record 0
## 好耶！
scoreboard players set advancement.yes record 0
## 超级好评
scoreboard players set advancement.superLike record 0
## 神速
scoreboard players set advancement.soFast record 0

# --- 提示玩家进度已完成 ---

## 音效
function lib/modify_states/sound/random_levelup_2
## 聊天栏
execute as @a run tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.easter_egg.easter_egg_found"}]}},{"translate":"functions.general.new_advancements_opened"}]}}]}

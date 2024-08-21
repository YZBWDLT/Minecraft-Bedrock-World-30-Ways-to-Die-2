# ===== 完成大师进度 =====
# 大师传奇进度 [结束了！]
# 上游进度：无

# --- 记录进度已完成 ---

## 记录该进度已完成
scoreboard players set advancement.theRealEnd record 1
## 进度数记录+1
scoreboard players add progress.advancement record 1
## 同步记分板
function lib/scoreboard/advancement

# --- 开放下游进度 ---

# --- 提示玩家进度已完成 ---

## 音效
function lib/modify_states/sound/hard_achievement_complete
## 聊天栏
execute as @a run tellraw @s {"rawtext":[{"translate":"%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.legendary","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.master.the_real_end"}]}}]}}]}

# --- 特殊内容 ---

## 替换大厅信标 | 完成该进度时即完成全进度
setblock -45 9 26 beacon
## 关闭速通模式
execute if score speedrunMode settings matches 1 run function settings/speedrun_mode
## 记录本次通关时间 | 仅限玩家未开启开发者模式后记录
execute unless score endTime.tick record matches -1 run scoreboard players operation endTime.minute record = currentMinute time
execute unless score endTime.tick record matches -1 run scoreboard players operation endTime.second record = currentSecond time
execute unless score endTime.tick record matches -1 run scoreboard players operation endTime.tick record = tick time
## 计算最佳通关时间 | 仅限玩家未开启开发者模式后记录
execute unless score endTime.tick record matches -1 run function lib/get_data/best_time
## 计算通关次数 | 仅限玩家未开启开发者模式后记录
execute unless score endTime.tick record matches -1 run scoreboard players add mapCompletedTimes record 1

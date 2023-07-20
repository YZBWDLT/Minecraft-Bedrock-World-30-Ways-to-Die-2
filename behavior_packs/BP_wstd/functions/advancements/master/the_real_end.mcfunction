# 大师传奇进度 [结束了！]
# 上游进度：无

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 10

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advTheRealEnd] stats 1

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.legendary","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.master.the_real_end"}]}}]}}]}

## ===== 记录游玩时间 =====
execute @e[name=endTimeTick,scores={stats=!-1}] ~~~ scoreboard players operation @e[name=endTimeMinute] stats = @e[name=playedMinute] time
execute @e[name=endTimeTick,scores={stats=!-1}] ~~~ scoreboard players operation @e[name=endTimeSecond] stats = @e[name=playedSecond] time
execute @e[name=endTimeTick,scores={stats=!-1}] ~~~ scoreboard players operation @e[name=endTimeTick] stats = @e[name=ticker] time
execute @e[name=endTimeTick,scores={stats=!-1}] ~~~ function system/record_calculator
scoreboard players add mapCompletedTimes record 1

## ===== 替换信标 =====
setblock -45 9 26 beacon

## ===== 关闭速通模式 =====
execute @e[name=speedrunMode,scores={settings=1}] ~~~ function settings/speedrun_mode
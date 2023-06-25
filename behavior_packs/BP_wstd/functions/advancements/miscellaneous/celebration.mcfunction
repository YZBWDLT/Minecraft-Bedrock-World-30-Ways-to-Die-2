# 杂项普通进度 [庆典]
# 上游进度：让我康康 miscellaneous/let_me_see

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 8

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advCelebration] stats 1

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.miscellaneous.celebration"}]}}]}}]}
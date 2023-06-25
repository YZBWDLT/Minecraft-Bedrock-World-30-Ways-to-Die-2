# 大师传奇进度 [这也能速通？]
# 上游进度：神速 master/so_fast

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 10

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advHowCanYouSpeedrun] stats 1

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.legend","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.master.how_can_you_speedrun"}]}}]}}]}
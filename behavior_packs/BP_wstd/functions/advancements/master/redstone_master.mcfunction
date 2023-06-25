# 大师稀有进度 [红石家]
# 上游进度：小试牛刀 mainline/more_skilled

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 9

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advRedstoneMaster] stats 1

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.rare","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.master.redstone_master"}]}}]}}]}
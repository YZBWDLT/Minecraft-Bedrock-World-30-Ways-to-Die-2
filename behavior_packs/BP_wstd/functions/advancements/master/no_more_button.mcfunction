# 大师稀有进度 [不是吧，还有？]
# 上游进度：又双叒叕是按钮 mainline/button_again

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 9

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advNoMoreButton] stats 1

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.rare","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.master.no_more_button"}]}}]}}]}

## ===== 毁掉按钮 =====
fill -46 10 36 -46 11 35 air[] destroy
kill @e[type=item]
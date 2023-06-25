# 主线稀有进度 [幸运儿]
# 上游进度：满地的白色生物 mainline/white_mobs_anywhere

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 9

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advLuckyDog] stats 1

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.rare","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.mainline.lucky_dog"}]}}]}}]}
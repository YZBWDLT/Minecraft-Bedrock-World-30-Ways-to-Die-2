# 主线普通进度 [满地的白色生物]
# 上游进度：半程旅途 mainline/half_way

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 8

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advWhiteMobsAnywhere] stats 1
### 开放BUG！
summon je:marker "advBug" 0 3 0
scoreboard players set @e[name=advBug] stats 0
### 开放幸运儿
summon je:marker "advLuckyDog" 0 3 0
scoreboard players set @e[name=advLuckyDog] stats 0

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.mainline.white_mobs_anywhere"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}
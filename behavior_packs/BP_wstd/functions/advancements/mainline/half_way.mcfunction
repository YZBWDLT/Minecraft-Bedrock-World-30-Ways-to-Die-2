# 主线普通进度 [半途旅程]
# 上游进度：小试牛刀 mainline/get_started

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 8

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advHalfWay] stats 1
### 开放结束了！...吗？
summon je:marker "advTheEnd" 0 3 0
scoreboard players set @e[name=advTheEnd] stats 0
### 开放满地的白色生物
summon je:marker "advWhiteMobsAnywhere" 0 3 0
scoreboard players set @e[name=advWhiteMobsAnywhere] stats 0
### 开放酿造家
summon je:marker "advBrewingMaster" 0 3 0
scoreboard players set @e[name=advBrewingMaster] stats 0
### 开放按钮！
summon je:marker "advButton" 0 3 0
scoreboard players set @e[name=advButton] stats 0
### 开放生存家
summon je:marker "advSurviveMaster" 0 3 0
scoreboard players set @e[name=advSurviveMaster] stats 0

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.mainline.half_way"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}
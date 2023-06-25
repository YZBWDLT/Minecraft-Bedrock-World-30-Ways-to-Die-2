# 主线普通进度 [小试牛刀]
# 上游进度：初来乍到 mainline/get_started

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 8

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advMoreSkilled] stats 1
### 开放另辟蹊径
summon je:marker "advAnotherWay" 0 3 0
scoreboard players set @e[name=advAnotherWay] stats 0
### 开放半程旅途
summon je:marker "advHalfWay" 0 3 0
scoreboard players set @e[name=advHalfWay] stats 0
### 开放红石家
summon je:marker "advRedstoneMaster" 0 3 0
scoreboard players set @e[name=advRedstoneMaster] stats 0

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.mainline.more_skilled"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}
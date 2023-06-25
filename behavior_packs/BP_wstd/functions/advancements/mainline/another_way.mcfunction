# 主线普通进度 [另辟蹊径]
# 上游进度：小试牛刀 mainline/more_skilled

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 8

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advAnotherWay] stats 1
### 开放为什么要这么摆放铁啊？
summon je:marker "advWhyPlaceIronLikeThis" 0 3 0
scoreboard players set @e[name=advWhyPlaceIronLikeThis] stats 0

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.mainline.another_way"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}
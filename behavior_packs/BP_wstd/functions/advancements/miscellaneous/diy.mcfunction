# 杂项普通进度 [DIY？！]
# 上游进度：让我康康 miscellaneous/who

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 8

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advDiy] stats 1
### 开放欣赏，观望
summon je:marker "advAppreciateAndWatch" 0 3 0
scoreboard players set @e[name=advAppreciateAndWatch] stats 0

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.miscellaneous.diy"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}
# 主线普通进度 [初来乍到]
# 上游进度：无

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 8

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advGetStarted] stats 1
## 开放小试牛刀
summon je:marker "advMoreSkilled" 0 3 0
scoreboard players set @e[name=advMoreSkilled] stats 0

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.mainline.get_started"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}
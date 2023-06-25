# 大师稀有进度 [又双叒叕是按钮]
# 上游进度：按钮 master/button

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 9

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advButtonAgain] stats 1
### 开放不是吧，还有？
summon je:marker "advNoMoreButton" 0 3 0
scoreboard players set @e[name=advNoMoreButton] stats 0

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.rare","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.master.button_again"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}
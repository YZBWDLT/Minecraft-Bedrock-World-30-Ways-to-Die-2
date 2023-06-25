# 杂项普通进度 [让我康康]
# 上游进度：无

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 8

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advLetMeSee] stats 1
### 开放庆典
summon je:marker "advCelebration" 0 3 0
scoreboard players set @e[name=advCelebration] stats 0
### 开放是谁
summon je:marker "advWho" 0 3 0
scoreboard players set @e[name=advWho] stats 0

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.miscellaneous.let_me_see"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}

## ===== 刷新展示框 =====
function halls/advancement_center/load_data
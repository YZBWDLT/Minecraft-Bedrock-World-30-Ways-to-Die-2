# 大师稀有进度 [神速]
# 上游进度：藏得够深的！ easter_egg/easter_egg_found

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 9

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advSoFast] stats 1
### 开放这也能速通？
summon je:marker "advHowCanYouSpeedrun" 0 3 0
scoreboard players set @e[name=advHowCanYouSpeedrun] stats 0

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.rare","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.master.so_fast"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}
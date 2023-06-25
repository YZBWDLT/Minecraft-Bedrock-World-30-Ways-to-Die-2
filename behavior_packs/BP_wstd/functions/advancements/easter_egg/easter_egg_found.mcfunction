# 彩蛋普通进度 [藏得够深的！]
# 上游进度：无

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 8

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advEasterEggFound] stats 1
### 开放我还以为是跑酷
summon je:marker "advNotAParkour" 0 3 0
scoreboard players set @e[name=advNotAParkour] stats 0
### 开放好耶！
summon je:marker "advYes" 0 3 0
scoreboard players set @e[name=advYes] stats 0
### 开放超级好评
summon je:marker "advSuperLike" 0 3 0
scoreboard players set @e[name=advSuperLike] stats 0
### 开放神速
summon je:marker "advSoFast" 0 3 0
scoreboard players set @e[name=advSoFast] stats 0

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.normal","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.easter_egg.easter_egg_found"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}
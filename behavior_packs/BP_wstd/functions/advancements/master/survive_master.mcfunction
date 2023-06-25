# 大师稀有进度 [生存家]
# 上游进度：半程旅途 mainline/half_way

## ===== 音效 =====
scoreboard players set @e[name=soundPlayer] active 9

## ===== 添加进度分数并同步记分板 =====
scoreboard players add @e[name=advancement] stats 1
function system/display_scoreboards/advancement

## ===== 记录此进度已完成并开放下面的进度 =====
scoreboard players set @e[name=advSurviveMaster] stats 1
### 开放绿宝石！
summon je:marker "advEmerald" 0 3 0
scoreboard players set @e[name=advEmerald] stats 0

## ===== 提示玩家进度已完成 =====
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.rare","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.master.survive_master"}]}},{"translate":"chat.advancement.new_advancement_unlocked"}]}}]}
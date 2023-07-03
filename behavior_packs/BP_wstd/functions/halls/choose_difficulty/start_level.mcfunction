# 进入选择难度的阶段

## 设置关卡ID
scoreboard players set @e[name=level] backend -16

## 清除物品并重新传送玩家 | 防止玩家直接进入光束中
clear @a
tp @a 45 21 -28

## 召唤展示文本
## 令backend.counter = record.mapCompletedTimes，以判断地图完成次数
scoreboard players operation @e[name=counter] backend = mapCompletedTimes record

### 中文
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§l§b非常简单" 48 22 -22
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§l§a简单" 46 22 -22
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§l§e普通" 44 22 -22
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§l§c困难" 42 22 -22
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=1..}] ~~~ summon wstd:text_display "§l§c速通模式" 41 22 -25

### 英文
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§l§bVery Easy" 48 22 -22
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§l§aEasy" 46 22 -22
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§l§eNormal" 44 22 -22
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§l§cHard" 42 22 -22
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=1..}] ~~~ summon wstd:text_display "§l§cSpeedrun Mode" 41 22 -25

## 启用时间线
function system/enable_timeline_without_flowing
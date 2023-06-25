# 进入选择难度的阶段

## 设置关卡ID
scoreboard players set @e[name=level] backend -16

## 清除物品并重新传送玩家 | 防止玩家直接进入光束中
clear @a
tp @a 45 21 -28

## 召唤展示文本
summon wstd:text_display "§l§b非常简单" 48 22 -22
summon wstd:text_display "§l§a简单" 46 22 -22
summon wstd:text_display "§l§e普通" 44 22 -22
summon wstd:text_display "§l§c困难" 42 22 -22

scoreboard players operation @e[name=counter] backend = mapCompletedTimes record
execute @e[name=counter,scores={backend=1..}] ~~~ summon wstd:text_display "§l§c速通模式" 41 22 -25

## 启用时间线
function system/enable_timeline_without_flowing
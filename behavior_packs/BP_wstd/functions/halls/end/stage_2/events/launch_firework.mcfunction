# ===== 点燃烟花 =====

# --- 当到时后，指定下一步该放哪个发射器的烟花 ---
scoreboard players add endStage2.fireworkLauncher data 1
execute if score endStage2.fireworkLauncher data matches !1..15 run scoreboard players set endStage2.fireworkLauncher data 1

# --- 发射烟花 ---
# 逻辑为：
# * 如果此时轮到第X号发射烟花，在其发射器下安置红石块；
# * 此时，前一个（第X-1号）清除已有的红石块；
# * 此时，下一个（第X+1号）重新加载烟花发射器结构，做好下次发射准备。

## 发射1号烟花时，2号准备，15号清除红石块
execute if score endStage2.fireworkLauncher data matches 1 as @e[name=fireworkLauncher] at @s if score @s data matches 1 run setblock ~~1~ redstone_block
execute if score endStage2.fireworkLauncher data matches 1 as @e[name=fireworkLauncher] at @s if score @s data matches 2 run structure load firework_dispenser ~~2~
execute if score endStage2.fireworkLauncher data matches 1 as @e[name=fireworkLauncher] at @s if score @s data matches 15 run setblock ~~1~ air

## 发射2号烟花时，3号准备，1号清除红石块
execute if score endStage2.fireworkLauncher data matches 2 as @e[name=fireworkLauncher] at @s if score @s data matches 2 run setblock ~~1~ redstone_block
execute if score endStage2.fireworkLauncher data matches 2 as @e[name=fireworkLauncher] at @s if score @s data matches 3 run structure load firework_dispenser ~~2~
execute if score endStage2.fireworkLauncher data matches 2 as @e[name=fireworkLauncher] at @s if score @s data matches 1 run setblock ~~1~ air

## 发射3号烟花时，4号准备，2号清除红石块
execute if score endStage2.fireworkLauncher data matches 3 as @e[name=fireworkLauncher] at @s if score @s data matches 3 run setblock ~~1~ redstone_block
execute if score endStage2.fireworkLauncher data matches 3 as @e[name=fireworkLauncher] at @s if score @s data matches 4 run structure load firework_dispenser ~~2~
execute if score endStage2.fireworkLauncher data matches 3 as @e[name=fireworkLauncher] at @s if score @s data matches 2 run setblock ~~1~ air

## 发射4号烟花时，5号准备，3号清除红石块
execute if score endStage2.fireworkLauncher data matches 4 as @e[name=fireworkLauncher] at @s if score @s data matches 4 run setblock ~~1~ redstone_block
execute if score endStage2.fireworkLauncher data matches 4 as @e[name=fireworkLauncher] at @s if score @s data matches 5 run structure load firework_dispenser ~~2~
execute if score endStage2.fireworkLauncher data matches 4 as @e[name=fireworkLauncher] at @s if score @s data matches 3 run setblock ~~1~ air

## 发射5号烟花时，6号准备，4号清除红石块
execute if score endStage2.fireworkLauncher data matches 5 as @e[name=fireworkLauncher] at @s if score @s data matches 5 run setblock ~~1~ redstone_block
execute if score endStage2.fireworkLauncher data matches 5 as @e[name=fireworkLauncher] at @s if score @s data matches 6 run structure load firework_dispenser ~~2~
execute if score endStage2.fireworkLauncher data matches 5 as @e[name=fireworkLauncher] at @s if score @s data matches 4 run setblock ~~1~ air

## 发射6号烟花时，7号准备，5号清除红石块
execute if score endStage2.fireworkLauncher data matches 6 as @e[name=fireworkLauncher] at @s if score @s data matches 6 run setblock ~~1~ redstone_block
execute if score endStage2.fireworkLauncher data matches 6 as @e[name=fireworkLauncher] at @s if score @s data matches 7 run structure load firework_dispenser ~~2~
execute if score endStage2.fireworkLauncher data matches 6 as @e[name=fireworkLauncher] at @s if score @s data matches 5 run setblock ~~1~ air

## 发射7号烟花时，8号准备，6号清除红石块
execute if score endStage2.fireworkLauncher data matches 7 as @e[name=fireworkLauncher] at @s if score @s data matches 7 run setblock ~~1~ redstone_block
execute if score endStage2.fireworkLauncher data matches 7 as @e[name=fireworkLauncher] at @s if score @s data matches 8 run structure load firework_dispenser ~~2~
execute if score endStage2.fireworkLauncher data matches 7 as @e[name=fireworkLauncher] at @s if score @s data matches 6 run setblock ~~1~ air

## 发射8号烟花时，9号准备，7号清除红石块
execute if score endStage2.fireworkLauncher data matches 8 as @e[name=fireworkLauncher] at @s if score @s data matches 8 run setblock ~~1~ redstone_block
execute if score endStage2.fireworkLauncher data matches 8 as @e[name=fireworkLauncher] at @s if score @s data matches 9 run structure load firework_dispenser ~~2~
execute if score endStage2.fireworkLauncher data matches 8 as @e[name=fireworkLauncher] at @s if score @s data matches 7 run setblock ~~1~ air

## 发射9号烟花时，10号准备，8号清除红石块
execute if score endStage2.fireworkLauncher data matches 9 as @e[name=fireworkLauncher] at @s if score @s data matches 9 run setblock ~~1~ redstone_block
execute if score endStage2.fireworkLauncher data matches 9 as @e[name=fireworkLauncher] at @s if score @s data matches 10 run structure load firework_dispenser ~~2~
execute if score endStage2.fireworkLauncher data matches 9 as @e[name=fireworkLauncher] at @s if score @s data matches 8 run setblock ~~1~ air

## 发射10号烟花时，11号准备，9号清除红石块
execute if score endStage2.fireworkLauncher data matches 10 as @e[name=fireworkLauncher] at @s if score @s data matches 10 run setblock ~~1~ redstone_block
execute if score endStage2.fireworkLauncher data matches 10 as @e[name=fireworkLauncher] at @s if score @s data matches 11 run structure load firework_dispenser ~~2~
execute if score endStage2.fireworkLauncher data matches 10 as @e[name=fireworkLauncher] at @s if score @s data matches 9 run setblock ~~1~ air

## 发射11号烟花时，12号准备，10号清除红石块
execute if score endStage2.fireworkLauncher data matches 11 as @e[name=fireworkLauncher] at @s if score @s data matches 11 run setblock ~~1~ redstone_block
execute if score endStage2.fireworkLauncher data matches 11 as @e[name=fireworkLauncher] at @s if score @s data matches 12 run structure load firework_dispenser ~~2~
execute if score endStage2.fireworkLauncher data matches 11 as @e[name=fireworkLauncher] at @s if score @s data matches 10 run setblock ~~1~ air

## 发射12号烟花时，13号准备，11号清除红石块
execute if score endStage2.fireworkLauncher data matches 12 as @e[name=fireworkLauncher] at @s if score @s data matches 12 run setblock ~~1~ redstone_block
execute if score endStage2.fireworkLauncher data matches 12 as @e[name=fireworkLauncher] at @s if score @s data matches 13 run structure load firework_dispenser ~~2~
execute if score endStage2.fireworkLauncher data matches 12 as @e[name=fireworkLauncher] at @s if score @s data matches 11 run setblock ~~1~ air

## 发射13号烟花时，14号准备，12号清除红石块
execute if score endStage2.fireworkLauncher data matches 13 as @e[name=fireworkLauncher] at @s if score @s data matches 13 run setblock ~~1~ redstone_block
execute if score endStage2.fireworkLauncher data matches 13 as @e[name=fireworkLauncher] at @s if score @s data matches 14 run structure load firework_dispenser ~~2~
execute if score endStage2.fireworkLauncher data matches 13 as @e[name=fireworkLauncher] at @s if score @s data matches 12 run setblock ~~1~ air

## 发射14号烟花时，15号准备，13号清除红石块
execute if score endStage2.fireworkLauncher data matches 14 as @e[name=fireworkLauncher] at @s if score @s data matches 14 run setblock ~~1~ redstone_block
execute if score endStage2.fireworkLauncher data matches 14 as @e[name=fireworkLauncher] at @s if score @s data matches 15 run structure load firework_dispenser ~~2~
execute if score endStage2.fireworkLauncher data matches 14 as @e[name=fireworkLauncher] at @s if score @s data matches 13 run setblock ~~1~ air

## 发射15号烟花时，1号准备，14号清除红石块
execute if score endStage2.fireworkLauncher data matches 15 as @e[name=fireworkLauncher] at @s if score @s data matches 15 run setblock ~~1~ redstone_block
execute if score endStage2.fireworkLauncher data matches 15 as @e[name=fireworkLauncher] at @s if score @s data matches 1 run structure load firework_dispenser ~~2~
execute if score endStage2.fireworkLauncher data matches 15 as @e[name=fireworkLauncher] at @s if score @s data matches 14 run setblock ~~1~ air

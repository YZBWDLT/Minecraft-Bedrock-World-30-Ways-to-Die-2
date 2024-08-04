# ===== 加载数据 =====

# --- 提示部分 ---

## 初始化
fill -98 19 34 -107 21 34 redstone_lamp
fill -98 19 35 -107 21 35 redstone_block

## 特殊关卡（20 21 22 30），将红石灯替换为石英块表示禁用
setblock -107 20 34 minecraft:quartz_block
setblock -98 19 34 minecraft:quartz_block
setblock -99 19 34 minecraft:quartz_block
setblock -107 19 34 minecraft:quartz_block

## 按照功能使用情况，将红石块替换为石英块表示已使用
execute if score hint.level1 record matches 1 run setblock -98 21 35 quartz_block
execute if score hint.level2 record matches 1 run setblock -99 21 35 quartz_block
execute if score hint.level3 record matches 1 run setblock -100 21 35 quartz_block
execute if score hint.level4 record matches 1 run setblock -101 21 35 quartz_block
execute if score hint.level5 record matches 1 run setblock -102 21 35 quartz_block
execute if score hint.level6 record matches 1 run setblock -103 21 35 quartz_block
execute if score hint.level7 record matches 1 run setblock -104 21 35 quartz_block
execute if score hint.level8 record matches 1 run setblock -105 21 35 quartz_block
execute if score hint.level9 record matches 1 run setblock -106 21 35 quartz_block
execute if score hint.level10 record matches 1 run setblock -107 21 35 quartz_block
execute if score hint.level11 record matches 1 run setblock -98 20 35 quartz_block
execute if score hint.level12 record matches 1 run setblock -99 20 35 quartz_block
execute if score hint.level13Part1 record matches 1 run setblock -100 20 35 quartz_block
execute if score hint.level14 record matches 1 run setblock -101 20 35 quartz_block
execute if score hint.level15 record matches 1 run setblock -102 20 35 quartz_block
execute if score hint.level16 record matches 1 run setblock -103 20 35 quartz_block
execute if score hint.level17 record matches 1 run setblock -104 20 35 quartz_block
execute if score hint.level18 record matches 1 run setblock -105 20 35 quartz_block
execute if score hint.level19 record matches 1 run setblock -106 20 35 quartz_block
execute if score hint.level23 record matches 1 run setblock -100 19 35 quartz_block
execute if score hint.level24 record matches 1 run setblock -101 19 35 quartz_block
execute if score hint.level25 record matches 1 run setblock -102 19 35 quartz_block
execute if score hint.level26 record matches 1 run setblock -103 19 35 quartz_block
execute if score hint.level27 record matches 1 run setblock -104 19 35 quartz_block
execute if score hint.level28 record matches 1 run setblock -105 19 35 quartz_block
execute if score hint.level29 record matches 1 run setblock -106 19 35 quartz_block

# --- 攻略部分 ---
## 初始化
fill -98 19 26 -107 21 26 redstone_lamp
fill -98 19 25 -107 21 25 redstone_block

## 特殊关卡（20 21 22 30），将红石灯替换为石英块表示禁用
setblock -98 20 26 minecraft:quartz_block
setblock -107 19 26 minecraft:quartz_block
setblock -106 19 26 minecraft:quartz_block
setblock -98 19 26 minecraft:quartz_block

## 按照功能使用情况，将红石块替换为石英块表示已使用
execute if score strategy.level1 record matches 1 run setblock -107 21 25 quartz_block
execute if score strategy.level2 record matches 1 run setblock -106 21 25 quartz_block
execute if score strategy.level3 record matches 1 run setblock -105 21 25 quartz_block
execute if score strategy.level4 record matches 1 run setblock -104 21 25 quartz_block
execute if score strategy.level5 record matches 1 run setblock -103 21 25 quartz_block
execute if score strategy.level6 record matches 1 run setblock -102 21 25 quartz_block
execute if score strategy.level7 record matches 1 run setblock -101 21 25 quartz_block
execute if score strategy.level8 record matches 1 run setblock -100 21 25 quartz_block
execute if score strategy.level9 record matches 1 run setblock -99 21 25 quartz_block
execute if score strategy.level10 record matches 1 run setblock -98 21 25 quartz_block
execute if score strategy.level11 record matches 1 run setblock -107 20 25 quartz_block
execute if score strategy.level12 record matches 1 run setblock -106 20 25 quartz_block
execute if score strategy.level13Part1 record matches 1 run setblock -105 20 25 quartz_block
execute if score strategy.level14 record matches 1 run setblock -104 20 25 quartz_block
execute if score strategy.level15 record matches 1 run setblock -103 20 25 quartz_block
execute if score strategy.level16 record matches 1 run setblock -102 20 25 quartz_block
execute if score strategy.level17 record matches 1 run setblock -101 20 25 quartz_block
execute if score strategy.level18 record matches 1 run setblock -100 20 25 quartz_block
execute if score strategy.level19 record matches 1 run setblock -99 20 25 quartz_block
execute if score strategy.level23 record matches 1 run setblock -105 19 25 quartz_block
execute if score strategy.level24 record matches 1 run setblock -104 19 25 quartz_block
execute if score strategy.level25 record matches 1 run setblock -103 19 25 quartz_block
execute if score strategy.level26 record matches 1 run setblock -102 19 25 quartz_block
execute if score strategy.level27 record matches 1 run setblock -101 19 25 quartz_block
execute if score strategy.level28 record matches 1 run setblock -100 19 25 quartz_block
execute if score strategy.level29 record matches 1 run setblock -99 19 25 quartz_block

# --- 跳过部分 ---

## 初始化
fill -109 21 31 -109 19 29 redstone_lamp
fill -110 21 31 -110 19 29 redstone_block
setblock -109 19 31 quartz_block
setblock -109 19 29 quartz_block

## 按照功能使用情况，将红石块替换为石英块表示已使用
execute if score skip.level13Part1 record matches 1 run setblock -110 21 31 quartz_block
execute if score skip.level13Part2 record matches 1 run setblock -110 21 30 quartz_block
execute if score skip.level13Part3 record matches 1 run setblock -110 21 29 quartz_block
execute if score skip.level20 record matches 1 run setblock -110 20 31 quartz_block
execute if score skip.level21 record matches 1 run setblock -110 20 30 quartz_block
execute if score skip.level22 record matches 1 run setblock -110 20 29 quartz_block
execute if score skip.level30 record matches 1 run setblock -110 19 30 quartz_block

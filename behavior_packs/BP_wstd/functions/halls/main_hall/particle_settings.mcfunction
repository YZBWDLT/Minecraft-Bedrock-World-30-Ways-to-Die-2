# 大厅粒子特效

## ===== 结束屋粒子特效 =====
execute @e[name=mapCompleted,scores={stats=2}] ~~~ particle wstd:orange -50 8 30
execute @e[name=mapCompleted,scores={stats=2}] ~~~ particle wstd:orange -50 8 24
execute @e[name=mapCompleted,scores={stats=2}] ~~~ particle wstd:red -46 8 27
### 结束屋隐藏关卡
execute @e[name=mapCompleted,scores={stats=2}] ~~~ particle wstd:pink -46 9 35

## ===== 传送粒子特效 =====
particle wstd:light_blue 21 8 29
particle wstd:light_blue -39 8 29

## ===== 解锁时光效粒子 =====

### 左半侧 1-15关
execute @e[name=levelAdvancement,scores={stats=0..32}] ~~~ particle wstd:green 19 8 31
execute @e[name=levelAdvancement,scores={stats=1..32}] ~~~ particle wstd:green 15 8 31
execute @e[name=levelAdvancement,scores={stats=2..32}] ~~~ particle wstd:green 11 8 31
execute @e[name=levelAdvancement,scores={stats=3..32}] ~~~ particle wstd:green 7 8 31
execute @e[name=levelAdvancement,scores={stats=4..32}] ~~~ particle wstd:green 3 8 31
execute @e[name=levelAdvancement,scores={stats=5..32}] ~~~ particle wstd:green -1 8 31
execute @e[name=levelAdvancement,scores={stats=6..32}] ~~~ particle wstd:green -5 8 31
execute @e[name=levelAdvancement,scores={stats=7..32}] ~~~ particle wstd:green -9 8 31
execute @e[name=levelAdvancement,scores={stats=8..32}] ~~~ particle wstd:yellow -13 8 31
execute @e[name=levelAdvancement,scores={stats=9..32}] ~~~ particle wstd:yellow -17 8 31
execute @e[name=levelAdvancement,scores={stats=10..32}] ~~~ particle wstd:green -21 8 31
execute @e[name=levelAdvancement,scores={stats=11..32}] ~~~ particle wstd:yellow -25 8 31
execute @e[name=levelAdvancement,scores={stats=12..32}] ~~~ particle wstd:red -29 8 31
#### 第14关时，当第13关通过后显示才为正常，此时stats.levelAdvancement=32，因此13和31都应该是禁用的
execute @e[name=levelAdvancement,scores={stats=14..32,stats=!31}] ~~~ particle wstd:yellow -33 8 31
execute @e[name=levelAdvancement,scores={stats=14..30}] ~~~ particle wstd:green -37 8 31

### 右半侧 16-30关
execute @e[name=levelAdvancement,scores={stats=15..30}] ~~~ particle wstd:green 19 8 23
execute @e[name=levelAdvancement,scores={stats=16..30}] ~~~ particle wstd:green 15 8 23
execute @e[name=levelAdvancement,scores={stats=17..30}] ~~~ particle wstd:yellow 11 8 23
execute @e[name=levelAdvancement,scores={stats=18..30}] ~~~ particle wstd:yellow 7 8 23
execute @e[name=levelAdvancement,scores={stats=19..30}] ~~~ particle wstd:red 3 8 23
execute @e[name=levelAdvancement,scores={stats=20..30}] ~~~ particle wstd:red -1 8 23
execute @e[name=levelAdvancement,scores={stats=21..30}] ~~~ particle wstd:red -5 8 23
execute @e[name=levelAdvancement,scores={stats=22..30}] ~~~ particle wstd:yellow -9 8 23
execute @e[name=levelAdvancement,scores={stats=23..30}] ~~~ particle wstd:yellow -13 8 23
execute @e[name=levelAdvancement,scores={stats=24..30}] ~~~ particle wstd:green -17 8 23
execute @e[name=levelAdvancement,scores={stats=25..30}] ~~~ particle wstd:yellow -21 8 23
execute @e[name=levelAdvancement,scores={stats=26..30}] ~~~ particle wstd:yellow -25 8 23
execute @e[name=levelAdvancement,scores={stats=27..30}] ~~~ particle wstd:green -29 8 23
execute @e[name=levelAdvancement,scores={stats=28..30}] ~~~ particle wstd:yellow -33 8 23
execute @e[name=levelAdvancement,scores={stats=29..30}] ~~~ particle wstd:red -37 8 23

## ===== 未解锁时光效粒子 =====

### 左半侧 1-15关
execute @e[name=levelAdvancement,scores={stats=0}] ~~~ particle wstd:grey 15 8 31
execute @e[name=levelAdvancement,scores={stats=0..1}] ~~~ particle wstd:grey 11 8 31
execute @e[name=levelAdvancement,scores={stats=0..2}] ~~~ particle wstd:grey 7 8 31
execute @e[name=levelAdvancement,scores={stats=0..3}] ~~~ particle wstd:grey 3 8 31
execute @e[name=levelAdvancement,scores={stats=0..4}] ~~~ particle wstd:grey -1 8 31
execute @e[name=levelAdvancement,scores={stats=0..5}] ~~~ particle wstd:grey -5 8 31
execute @e[name=levelAdvancement,scores={stats=0..6}] ~~~ particle wstd:grey -9 8 31
execute @e[name=levelAdvancement,scores={stats=0..7}] ~~~ particle wstd:grey -13 8 31
execute @e[name=levelAdvancement,scores={stats=0..8}] ~~~ particle wstd:grey -17 8 31
execute @e[name=levelAdvancement,scores={stats=0..9}] ~~~ particle wstd:grey -21 8 31
execute @e[name=levelAdvancement,scores={stats=0..10}] ~~~ particle wstd:grey -25 8 31
execute @e[name=levelAdvancement,scores={stats=0..11}] ~~~ particle wstd:grey -29 8 31
#### 第14关，在13和31时都禁用
execute @e[name=levelAdvancement,scores={stats=0..13}] ~~~ particle wstd:grey -33 8 31
execute @e[name=levelAdvancement,scores={stats=31}] ~~~ particle wstd:grey -33 8 31

execute @e[name=levelAdvancement,scores={stats=0..32,stats=!14..30}] ~~~ particle wstd:grey -37 8 31

### 右半侧 16-30关
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!15..30}] ~~~ particle wstd:grey 19 8 23
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!16..30}] ~~~ particle wstd:grey 15 8 23
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!17..30}] ~~~ particle wstd:grey 11 8 23
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!18..30}] ~~~ particle wstd:grey 7 8 23
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!19..30}] ~~~ particle wstd:grey 3 8 23
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!20..30}] ~~~ particle wstd:grey -1 8 23
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!21..30}] ~~~ particle wstd:grey -5 8 23
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!22..30}] ~~~ particle wstd:grey -9 8 23
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!23..30}] ~~~ particle wstd:grey -13 8 23
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!24..30}] ~~~ particle wstd:grey -17 8 23
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!25..30}] ~~~ particle wstd:grey -21 8 23
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!26..30}] ~~~ particle wstd:grey -25 8 23
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!27..30}] ~~~ particle wstd:grey -29 8 23
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!28..30}] ~~~ particle wstd:grey -33 8 23
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!29..30}] ~~~ particle wstd:grey -37 8 23

## ===== 数字粒子 =====

### 左半侧
particle wstd:zero 19.7 11.2 31.9
particle wstd:one 19.3 11.2 31.9

particle wstd:zero 15.7 11.2 31.9
particle wstd:two 15.3 11.2 31.9

particle wstd:zero 11.7 11.2 31.9
particle wstd:three 11.3 11.2 31.9

particle wstd:zero 7.7 11.2 31.9
particle wstd:four 7.3 11.2 31.9

particle wstd:zero 3.7 11.2 31.9
particle wstd:five 3.3 11.2 31.9

particle wstd:zero -0.3 11.2 31.9
particle wstd:six -0.7 11.2 31.9

particle wstd:zero -4.3 11.2 31.9
particle wstd:seven -4.7 11.2 31.9

particle wstd:zero -8.3 11.2 31.9
particle wstd:eight -8.7 11.2 31.9

particle wstd:zero -12.3 11.2 31.9
particle wstd:nine -12.7 11.2 31.9

particle wstd:one -16.3 11.2 31.9
particle wstd:zero -16.7 11.2 31.9

particle wstd:one -20.3 11.2 31.9
particle wstd:one -20.7 11.2 31.9

particle wstd:one -24.3 11.2 31.9
particle wstd:two -24.7 11.2 31.9

particle wstd:one -28.3 11.2 31.9
particle wstd:three -28.7 11.2 31.9

particle wstd:one -32.3 11.2 31.9
particle wstd:four -32.7 11.2 31.9

particle wstd:one -36.3 11.2 31.9
particle wstd:five -36.7 11.2 31.9

### 右半侧
particle wstd:one 19.3 11.2 23.1
particle wstd:six 19.7 11.2 23.1

particle wstd:one 15.3 11.2 23.1
particle wstd:seven 15.7 11.2 23.1

particle wstd:one 11.3 11.2 23.1
particle wstd:eight 11.7 11.2 23.1

particle wstd:one 7.3 11.2 23.1
particle wstd:nine 7.7 11.2 23.1

particle wstd:two 3.3 11.2 23.1
particle wstd:zero 3.7 11.2 23.1

particle wstd:two -0.7 11.2 23.1
particle wstd:one -0.3 11.2 23.1

particle wstd:two -4.7 11.2 23.1
particle wstd:two -4.3 11.2 23.1

particle wstd:two -8.7 11.2 23.1
particle wstd:three -8.3 11.2 23.1

particle wstd:two -12.7 11.2 23.1
particle wstd:four -12.3 11.2 23.1

particle wstd:two -16.7 11.2 23.1
particle wstd:five -16.3 11.2 23.1

particle wstd:two -20.7 11.2 23.1
particle wstd:six -20.3 11.2 23.1

particle wstd:two -24.7 11.2 23.1
particle wstd:seven -24.3 11.2 23.1

particle wstd:two -28.7 11.2 23.1
particle wstd:eight -28.3 11.2 23.1

particle wstd:two -32.7 11.2 23.1
particle wstd:nine -32.3 11.2 23.1

particle wstd:three -36.7 11.2 23.1
particle wstd:zero -36.3 11.2 23.1

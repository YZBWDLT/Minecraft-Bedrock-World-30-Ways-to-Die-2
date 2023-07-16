# 大厅粒子特效

## ===== 隐藏关卡 =====
particle wstd:pink -38 8 12

## ===== 解锁时光效粒子 =====

### 左半侧 1-5关
execute @e[name=easterEggAdvancement,scores={stats=40..50}] ~~~ particle wstd:pink -22 8 9
execute @e[name=easterEggAdvancement,scores={stats=41..50}] ~~~ particle wstd:pink -26 8 9
execute @e[name=easterEggAdvancement,scores={stats=42..50}] ~~~ particle wstd:pink -30 8 9
execute @e[name=easterEggAdvancement,scores={stats=43..50}] ~~~ particle wstd:pink -34 8 9
execute @e[name=easterEggAdvancement,scores={stats=44..50}] ~~~ particle wstd:pink -38 8 9

### 右半侧 6-10关
execute @e[name=easterEggAdvancement,scores={stats=45..50}] ~~~ particle wstd:pink -22 8 1
execute @e[name=easterEggAdvancement,scores={stats=46..50}] ~~~ particle wstd:pink -26 8 1
execute @e[name=easterEggAdvancement,scores={stats=47..50}] ~~~ particle wstd:pink -30 8 1
execute @e[name=easterEggAdvancement,scores={stats=48..50}] ~~~ particle wstd:pink -34 8 1
execute @e[name=easterEggAdvancement,scores={stats=49..50}] ~~~ particle wstd:pink -38 8 1

## ===== 未解锁时光效粒子 =====

### 左半侧 2-5关
execute @e[name=easterEggAdvancement,scores={stats=40}] ~~~ particle wstd:grey -26 8 9
execute @e[name=easterEggAdvancement,scores={stats=40..41}] ~~~ particle wstd:grey -30 8 9
execute @e[name=easterEggAdvancement,scores={stats=40..42}] ~~~ particle wstd:grey -34 8 9
execute @e[name=easterEggAdvancement,scores={stats=40..43}] ~~~ particle wstd:grey -38 8 9

### 右半侧 6-10关
execute @e[name=easterEggAdvancement,scores={stats=40..44}] ~~~ particle wstd:grey -22 8 1
execute @e[name=easterEggAdvancement,scores={stats=40..45}] ~~~ particle wstd:grey -26 8 1
execute @e[name=easterEggAdvancement,scores={stats=40..46}] ~~~ particle wstd:grey -30 8 1
execute @e[name=easterEggAdvancement,scores={stats=40..47}] ~~~ particle wstd:grey -34 8 1
execute @e[name=easterEggAdvancement,scores={stats=40..48}] ~~~ particle wstd:grey -38 8 1

## ===== 数字粒子 =====

### 左半侧
particle wstd:zero -21.3 11.2 9.9
particle wstd:one -21.7 11.2 9.9

particle wstd:zero -25.3 11.2 9.9
execute @e[name=isNetease,scores={settings=0}] ~~~ particle wstd:two -25.7 11.2 9.9
execute @e[name=isNetease,scores={settings=1}] ~~~ particle wstd:two_netease -25.7 11.2 9.9

particle wstd:zero -29.3 11.2 9.9
particle wstd:three -29.7 11.2 9.9

particle wstd:zero -33.3 11.2 9.9
particle wstd:four -33.7 11.2 9.9

particle wstd:zero -37.3 11.2 9.9
particle wstd:five -37.7 11.2 9.9

particle wstd:zero -21.7 11.2 1.1
particle wstd:six -21.3 11.2 1.1

particle wstd:zero -25.7 11.2 1.1
particle wstd:seven -25.3 11.2 1.1

particle wstd:zero -29.7 11.2 1.1
particle wstd:eight -29.3 11.2 1.1

particle wstd:zero -33.7 11.2 1.1
particle wstd:nine -33.3 11.2 1.1

particle wstd:one -37.7 11.2 1.1
particle wstd:zero -37.3 11.2 1.1

## ===== 隐藏关卡 =====
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @a[x=-46,y=10,z=35,r=1] ~~~ function levels/hided_1/start_level

## ===== 解锁时触发进入函数 =====

### 左半侧 1-15关
execute @e[name=levelAdvancement,scores={stats=0..32}] ~~~ execute @a[x=19,y=9,z=31,r=1] ~~~ function levels/level_1/start_level
execute @e[name=levelAdvancement,scores={stats=1..32}] ~~~ execute @a[x=15,y=9,z=31,r=1] ~~~ function levels/level_2/start_level
execute @e[name=levelAdvancement,scores={stats=2..32}] ~~~ execute @a[x=11,y=9,z=31,r=1] ~~~ function levels/level_3/start_level
execute @e[name=levelAdvancement,scores={stats=3..32}] ~~~ execute @a[x=7,y=9,z=31,r=1] ~~~ function levels/level_4/start_level
execute @e[name=levelAdvancement,scores={stats=4..32}] ~~~ execute @a[x=3,y=9,z=31,r=1] ~~~ function levels/level_5/start_level
execute @e[name=levelAdvancement,scores={stats=5..32}] ~~~ execute @a[x=-1,y=9,z=31,r=1] ~~~ function levels/level_6/start_level
execute @e[name=levelAdvancement,scores={stats=6..32}] ~~~ execute @a[x=-5,y=9,z=31,r=1] ~~~ function levels/level_7/start_level
execute @e[name=levelAdvancement,scores={stats=7..32}] ~~~ execute @a[x=-9,y=9,z=31,r=1] ~~~ function levels/level_8/start_level
execute @e[name=levelAdvancement,scores={stats=8..32}] ~~~ execute @a[x=-13,y=9,z=31,r=1] ~~~ function levels/level_9/start_level
execute @e[name=levelAdvancement,scores={stats=9..32}] ~~~ execute @a[x=-17,y=9,z=31,r=1] ~~~ execute @e[name=nether] ~~~ function levels/level_10/start_level
execute @e[name=levelAdvancement,scores={stats=10..32}] ~~~ execute @a[x=-21,y=9,z=31,r=1] ~~~ function levels/level_11/start_level
execute @e[name=levelAdvancement,scores={stats=11..32}] ~~~ execute @a[x=-25,y=9,z=31,r=1] ~~~ function levels/level_12/start_level
execute @e[name=levelAdvancement,scores={stats=12..32}] ~~~ execute @a[x=-29,y=9,z=31,r=1] ~~~ function levels/level_13/part_1/start_level
#### 第14关时，当第13关通过后显示才为正常，此时stats.levelAdvancement=32，因此13和31都应该是禁用的
execute @e[name=levelAdvancement,scores={stats=14..32,stats=!31}] ~~~ execute @a[x=-33,y=9,z=31,r=1] ~~~ function levels/level_14/start_level
execute @e[name=levelAdvancement,scores={stats=14..30}] ~~~ execute @a[x=-37,y=9,z=31,r=1] ~~~ function levels/level_15/start_level

### 右半侧 16-30关
execute @e[name=levelAdvancement,scores={stats=15..30}] ~~~ execute @a[x=19,y=9,z=23,r=1] ~~~ function levels/level_16/start_level
execute @e[name=levelAdvancement,scores={stats=16..30}] ~~~ execute @a[x=15,y=9,z=23,r=1] ~~~ function levels/level_17/start_level
execute @e[name=levelAdvancement,scores={stats=17..30}] ~~~ execute @a[x=11,y=9,z=23,r=1] ~~~ function levels/level_18/start_level
execute @e[name=levelAdvancement,scores={stats=18..30}] ~~~ execute @a[x=7,y=9,z=23,r=1] ~~~ function levels/level_19/start_level
execute @e[name=levelAdvancement,scores={stats=19..30}] ~~~ execute @a[x=3,y=9,z=23,r=1] ~~~ function levels/level_20/start_level
execute @e[name=levelAdvancement,scores={stats=20..30}] ~~~ execute @a[x=-1,y=9,z=23,r=1] ~~~ function levels/level_21/start_level
execute @e[name=levelAdvancement,scores={stats=21..30}] ~~~ execute @a[x=-5,y=9,z=23,r=1] ~~~ function levels/level_22/start_level
execute @e[name=levelAdvancement,scores={stats=22..30}] ~~~ execute @a[x=-9,y=9,z=23,r=1] ~~~ function levels/level_23/start_level
execute @e[name=levelAdvancement,scores={stats=23..30}] ~~~ execute @a[x=-13,y=9,z=23,r=1] ~~~ function levels/level_24/start_level
execute @e[name=levelAdvancement,scores={stats=24..30}] ~~~ execute @a[x=-17,y=9,z=23,r=1] ~~~ function levels/level_25/start_level
execute @e[name=levelAdvancement,scores={stats=25..30}] ~~~ execute @a[x=-21,y=9,z=23,r=1] ~~~ function levels/level_26/start_level
execute @e[name=levelAdvancement,scores={stats=26..30}] ~~~ execute @a[x=-25,y=9,z=23,r=1] ~~~ function levels/level_27/start_level
execute @e[name=levelAdvancement,scores={stats=27..30}] ~~~ execute @a[x=-29,y=9,z=23,r=1] ~~~ function levels/level_28/start_level
execute @e[name=levelAdvancement,scores={stats=28..30}] ~~~ execute @a[x=-33,y=9,z=23,r=1] ~~~ function levels/level_29/start_level
execute @e[name=levelAdvancement,scores={stats=29..30}] ~~~ execute @a[x=-37,y=9,z=23,r=1] ~~~ function levels/level_30/start_level

## ===== 未解锁时光效粒子 =====

### 左半侧 1-15关
execute @e[name=levelAdvancement,scores={stats=0}] ~~~ execute @a[x=15,y=9,z=31,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..1}] ~~~ execute @a[x=11,y=9,z=31,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..2}] ~~~ execute @a[x=7,y=9,z=31,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..3}] ~~~ execute @a[x=3,y=9,z=31,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..4}] ~~~ execute @a[x=-1,y=9,z=31,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..5}] ~~~ execute @a[x=-5,y=9,z=31,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..6}] ~~~ execute @a[x=-9,y=9,z=31,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..7}] ~~~ execute @a[x=-13,y=9,z=31,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..8}] ~~~ execute @a[x=-17,y=9,z=31,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..9}] ~~~ execute @a[x=-21,y=9,z=31,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..10}] ~~~ execute @a[x=-25,y=9,z=31,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..11}] ~~~ execute @a[x=-29,y=9,z=31,r=1] ~~~ function halls/main_hall/level_locked
#### 第14关，在13和31时都禁用
execute @e[name=levelAdvancement,scores={stats=0..13}] ~~~ execute @a[x=-33,y=9,z=31,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=31}] ~~~ execute @a[x=-33,y=9,z=31,r=1] ~~~ function halls/main_hall/level_locked

execute @e[name=levelAdvancement,scores={stats=0..32,stats=!14..30}] ~~~ execute @a[x=-37,y=9,z=31,r=1] ~~~ function halls/main_hall/level_locked

### 右半侧 16-30关
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!15..30}] ~~~ execute @a[x=19,y=9,z=23,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!16..30}] ~~~ execute @a[x=15,y=9,z=23,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!17..30}] ~~~ execute @a[x=11,y=9,z=23,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!18..30}] ~~~ execute @a[x=7,y=9,z=23,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!19..30}] ~~~ execute @a[x=3,y=9,z=23,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!20..30}] ~~~ execute @a[x=-1,y=9,z=23,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!21..30}] ~~~ execute @a[x=-5,y=9,z=23,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!22..30}] ~~~ execute @a[x=-9,y=9,z=23,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!23..30}] ~~~ execute @a[x=-13,y=9,z=23,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!24..30}] ~~~ execute @a[x=-17,y=9,z=23,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!25..30}] ~~~ execute @a[x=-21,y=9,z=23,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!26..30}] ~~~ execute @a[x=-25,y=9,z=23,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!27..30}] ~~~ execute @a[x=-29,y=9,z=23,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!28..30}] ~~~ execute @a[x=-33,y=9,z=23,r=1] ~~~ function halls/main_hall/level_locked
execute @e[name=levelAdvancement,scores={stats=0..32,stats=!29..30}] ~~~ execute @a[x=-37,y=9,z=23,r=1] ~~~ function halls/main_hall/level_locked
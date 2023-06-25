## ===== 隐藏关卡 =====
execute @a[x=-38,y=9,z=12,r=1] ~~~ function levels/hided_3/start_level

## ===== 解锁时触发进入函数 =====

### 左半侧 1-5关
execute @e[name=easterEggAdvancement,scores={stats=40..50}] ~~~ execute @a[x=-22,y=9,z=9,r=1] ~~~ function levels/easter_egg_1/start_level
execute @e[name=easterEggAdvancement,scores={stats=41..50}] ~~~ execute @a[x=-26,y=9,z=9,r=1] ~~~ function levels/easter_egg_2/start_level
execute @e[name=easterEggAdvancement,scores={stats=42..50}] ~~~ execute @a[x=-30,y=9,z=9,r=1] ~~~ function levels/easter_egg_3/start_level
execute @e[name=easterEggAdvancement,scores={stats=43..50}] ~~~ execute @a[x=-34,y=9,z=9,r=1] ~~~ function levels/easter_egg_4/start_level
execute @e[name=easterEggAdvancement,scores={stats=44..50}] ~~~ execute @a[x=-38,y=9,z=9,r=1] ~~~ function levels/easter_egg_5/start_level

### 右半侧 6-10关
execute @e[name=easterEggAdvancement,scores={stats=45..50}] ~~~ execute @a[x=-22,y=9,z=1,r=1] ~~~ function levels/easter_egg_6/start_level
execute @e[name=easterEggAdvancement,scores={stats=46..50}] ~~~ execute @a[x=-26,y=9,z=1,r=1] ~~~ function levels/easter_egg_7/start_level
execute @e[name=easterEggAdvancement,scores={stats=47..50}] ~~~ execute @a[x=-30,y=9,z=1,r=1] ~~~ function levels/easter_egg_8/start_level
execute @e[name=easterEggAdvancement,scores={stats=48..50}] ~~~ execute @a[x=-34,y=9,z=1,r=1] ~~~ function levels/easter_egg_9/start_level
execute @e[name=easterEggAdvancement,scores={stats=49..50}] ~~~ execute @a[x=-38,y=9,z=1,r=1] ~~~ function levels/easter_egg_10/start_level

## ===== 未解锁时触发函数 =====

### 左半侧 1-5关
execute @e[name=easterEggAdvancement,scores={stats=40}] ~~~ execute @a[x=-26,y=9,z=9,r=1] ~~~ function halls/easter_egg_hall/level_locked
execute @e[name=easterEggAdvancement,scores={stats=40..41}] ~~~ execute @a[x=-30,y=9,z=9,r=1] ~~~ function halls/easter_egg_hall/level_locked
execute @e[name=easterEggAdvancement,scores={stats=40..42}] ~~~ execute @a[x=-34,y=9,z=9,r=1] ~~~ function halls/easter_egg_hall/level_locked
execute @e[name=easterEggAdvancement,scores={stats=40..43}] ~~~ execute @a[x=-38,y=9,z=9,r=1] ~~~ function halls/easter_egg_hall/level_locked

### 右半侧 6-10关
execute @e[name=easterEggAdvancement,scores={stats=40..44}] ~~~ execute @a[x=-22,y=9,z=1,r=1] ~~~ function halls/easter_egg_hall/level_locked
execute @e[name=easterEggAdvancement,scores={stats=40..45}] ~~~ execute @a[x=-26,y=9,z=1,r=1] ~~~ function halls/easter_egg_hall/level_locked
execute @e[name=easterEggAdvancement,scores={stats=40..46}] ~~~ execute @a[x=-30,y=9,z=1,r=1] ~~~ function halls/easter_egg_hall/level_locked
execute @e[name=easterEggAdvancement,scores={stats=40..47}] ~~~ execute @a[x=-34,y=9,z=1,r=1] ~~~ function halls/easter_egg_hall/level_locked
execute @e[name=easterEggAdvancement,scores={stats=40..48}] ~~~ execute @a[x=-38,y=9,z=1,r=1] ~~~ function halls/easter_egg_hall/level_locked

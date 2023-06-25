## ===== 解锁时触发进入函数 =====

execute @e[name=timeLimitedAdvancement,scores={stats=35..40}] ~~~ execute @a[x=-56,y=9,z=9,r=1] ~~~ function levels/time_limited_1/start_level
execute @e[name=timeLimitedAdvancement,scores={stats=36..40}] ~~~ execute @a[x=-60,y=9,z=9,r=1] ~~~ function levels/time_limited_2/start_level
execute @e[name=timeLimitedAdvancement,scores={stats=37..40}] ~~~ execute @a[x=-56,y=9,z=1,r=1] ~~~ function levels/time_limited_3/start_level
execute @e[name=timeLimitedAdvancement,scores={stats=38..40}] ~~~ execute @a[x=-60,y=9,z=1,r=1] ~~~ function levels/time_limited_4/start_level
execute @e[name=timeLimitedAdvancement,scores={stats=39..40}] ~~~ execute @a[x=-64,y=9,z=5,r=1] ~~~ function levels/time_limited_5/start_level

## ===== 未解锁时触发函数 =====

execute @e[name=timeLimitedAdvancement,scores={stats=35}] ~~~ execute @a[x=-60,y=9,z=9,r=1] ~~~ function halls/time_limited_hall/level_locked
execute @e[name=timeLimitedAdvancement,scores={stats=35..36}] ~~~ execute @a[x=-56,y=9,z=1,r=1] ~~~ function halls/time_limited_hall/level_locked
execute @e[name=timeLimitedAdvancement,scores={stats=35..37}] ~~~ execute @a[x=-60,y=9,z=1,r=1] ~~~ function halls/time_limited_hall/level_locked
execute @e[name=timeLimitedAdvancement,scores={stats=35..38}] ~~~ execute @a[x=-64,y=9,z=5,r=1] ~~~ function halls/time_limited_hall/level_locked

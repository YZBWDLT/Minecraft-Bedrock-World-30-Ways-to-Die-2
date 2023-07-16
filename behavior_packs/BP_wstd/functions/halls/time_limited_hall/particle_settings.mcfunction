# 大厅粒子特效

## ===== 解锁时光效粒子 =====

execute @e[name=timeLimitedAdvancement,scores={stats=35..40}] ~~~ particle wstd:orange -56 8 9
execute @e[name=timeLimitedAdvancement,scores={stats=36..40}] ~~~ particle wstd:orange -60 8 9
execute @e[name=timeLimitedAdvancement,scores={stats=37..40}] ~~~ particle wstd:orange -56 8 1
execute @e[name=timeLimitedAdvancement,scores={stats=38..40}] ~~~ particle wstd:orange -60 8 1
execute @e[name=timeLimitedAdvancement,scores={stats=39..40}] ~~~ particle wstd:orange -64 8 5

## ===== 未解锁时光效粒子 =====

execute @e[name=timeLimitedAdvancement,scores={stats=35}] ~~~ particle wstd:grey -60 8 9
execute @e[name=timeLimitedAdvancement,scores={stats=35..36}] ~~~ particle wstd:grey -56 8 1
execute @e[name=timeLimitedAdvancement,scores={stats=35..37}] ~~~ particle wstd:grey -60 8 1
execute @e[name=timeLimitedAdvancement,scores={stats=35..38}] ~~~ particle wstd:grey -64 8 5

## ===== 数字粒子 =====

particle wstd:zero -55.3 11.2 9.9
particle wstd:one -55.7 11.2 9.9

particle wstd:zero -59.3 11.2 9.9
execute @e[name=isNetease,scores={settings=0}] ~~~ particle wstd:two -59.7 11.2 9.9
execute @e[name=isNetease,scores={settings=1}] ~~~ particle wstd:two_netease -59.7 11.2 9.9

particle wstd:zero -55.7 11.2 1.1
particle wstd:three -55.3 11.2 1.1

particle wstd:zero -59.7 11.2 1.1
particle wstd:four -59.3 11.2 1.1

particle wstd:zero -63.9 11.2 5.7
particle wstd:five -63.9 11.2 5.3

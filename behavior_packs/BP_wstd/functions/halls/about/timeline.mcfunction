# 每1秒释放1次粒子
execute @e[name=ticker,scores={time=0}] ~~~ function halls/about/particle_settings

## === 地图信息 ===
execute @a[x=-102,y=19,z=49,r=1] ~~~ function settings/map_information
execute @a[x=-102,y=19,z=49,r=1] ~~~ tp @s -102 19 46

## === 制作人 ===
execute @a[x=-102,y=19,z=43.5,r=1] ~~~ function settings/credits
execute @a[x=-102,y=19,z=43.5,r=1] ~~~ tp @s -102 19 46

## === 更新日志 ===
execute @a[x=-104,y=19,z=49,r=1] ~~~ function settings/update_log
execute @a[x=-104,y=19,z=49,r=1] ~~~ tp @s -104 19 46

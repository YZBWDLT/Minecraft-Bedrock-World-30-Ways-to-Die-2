# 每1秒释放1次粒子
execute @e[name=ticker,scores={time=0}] ~~~ function halls/questions_and_answers/particle_settings

## === 地图规则 ===
execute @a[x=-102,y=19,z=49,r=1] ~~~ function settings/map_rule
execute @a[x=-102,y=19,z=49,r=1] ~~~ tp @s -102 19 46

## === 地图玩法 ===
execute @a[x=-102,y=19,z=43.5,r=1] ~~~ function settings/how_to_play
execute @a[x=-102,y=19,z=43.5,r=1] ~~~ tp @s -102 19 46

## === Q&A ===
execute @a[x=-104,y=19,z=49,r=1] ~~~ function settings/help
execute @a[x=-104,y=19,z=49,r=1] ~~~ tp @s -104 19 46

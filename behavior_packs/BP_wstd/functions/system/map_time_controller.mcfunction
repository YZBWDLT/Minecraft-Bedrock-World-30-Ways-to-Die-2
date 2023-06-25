# 地图时间控制器

## 当settings.mapTime = 0时，终为白日
execute @e[name=mapTime,scores={settings=0}] ~~~ time set 6000

## 当settings.mapTime = 1时，烟花教程调整为黑夜
execute @e[name=mapTime,scores={settings=1}] ~~~ execute @e[name=level,scores={backend=!-14,backend=!-5}] ~~~ time set 6000
execute @e[name=mapTime,scores={settings=1}] ~~~ execute @e[name=level,scores={backend=-14}] ~~~ time set 18000
execute @e[name=mapTime,scores={settings=1}] ~~~ execute @e[name=level,scores={backend=-5}] ~~~ time set 18000

## 当settings.mapTime = 2时，终为黑夜
execute @e[name=mapTime,scores={settings=2}] ~~~ time set 18000

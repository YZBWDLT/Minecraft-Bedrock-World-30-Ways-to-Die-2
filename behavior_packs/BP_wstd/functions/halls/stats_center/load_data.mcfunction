# ===== 添加红石灯和红石块 =====
## 提示部分
fill -98 19 34 -107 21 34 redstone_lamp
fill -98 19 35 -107 21 35 redstone_block
## 攻略部分
fill -98 19 26 -107 21 26 redstone_lamp
fill -98 19 25 -107 21 25 redstone_block
## 跳过部分
fill -109 21 31 -109 19 29 redstone_lamp
fill -110 21 31 -110 19 29 redstone_block
setblock -109 19 31 quartz_block
setblock -109 19 29 quartz_block

# ===== 当对应关卡已经使用功能时，灭掉红石灯 =====

## 提示部分
execute @e[name=lvl1Hint,scores={stats=1}] ~~~ setblock -98 21 35 quartz_block
execute @e[name=lvl2Hint,scores={stats=1}] ~~~ setblock -99 21 35 quartz_block
execute @e[name=lvl3Hint,scores={stats=1}] ~~~ setblock -100 21 35 quartz_block
execute @e[name=lvl4Hint,scores={stats=1}] ~~~ setblock -101 21 35 quartz_block
execute @e[name=lvl5Hint,scores={stats=1}] ~~~ setblock -102 21 35 quartz_block
execute @e[name=lvl6Hint,scores={stats=1}] ~~~ setblock -103 21 35 quartz_block
execute @e[name=lvl7Hint,scores={stats=1}] ~~~ setblock -104 21 35 quartz_block
execute @e[name=lvl8Hint,scores={stats=1}] ~~~ setblock -105 21 35 quartz_block
execute @e[name=lvl9Hint,scores={stats=1}] ~~~ setblock -106 21 35 quartz_block
execute @e[name=lvl10Hint,scores={stats=1}] ~~~ setblock -107 21 35 quartz_block
execute @e[name=lvl11Hint,scores={stats=1}] ~~~ setblock -98 20 35 quartz_block
execute @e[name=lvl12Hint,scores={stats=1}] ~~~ setblock -99 20 35 quartz_block
execute @e[name=lvl13Hint,scores={stats=1}] ~~~ setblock -100 20 35 quartz_block
execute @e[name=lvl14Hint,scores={stats=1}] ~~~ setblock -101 20 35 quartz_block
execute @e[name=lvl15Hint,scores={stats=1}] ~~~ setblock -102 20 35 quartz_block
execute @e[name=lvl16Hint,scores={stats=1}] ~~~ setblock -103 20 35 quartz_block
execute @e[name=lvl17Hint,scores={stats=1}] ~~~ setblock -104 20 35 quartz_block
execute @e[name=lvl18Hint,scores={stats=1}] ~~~ setblock -105 20 35 quartz_block
execute @e[name=lvl19Hint,scores={stats=1}] ~~~ setblock -106 20 35 quartz_block
# execute @e[name=lvl20Hint,scores={stats=1}] ~~~ setblock -107 20 35 quartz_block
# execute @e[name=lvl21Hint,scores={stats=1}] ~~~ setblock -98 19 35 quartz_block
# execute @e[name=lvl22Hint,scores={stats=1}] ~~~ setblock -99 19 35 quartz_block
execute @e[name=lvl23Hint,scores={stats=1}] ~~~ setblock -100 19 35 quartz_block
execute @e[name=lvl24Hint,scores={stats=1}] ~~~ setblock -101 19 35 quartz_block
execute @e[name=lvl25Hint,scores={stats=1}] ~~~ setblock -102 19 35 quartz_block
execute @e[name=lvl26Hint,scores={stats=1}] ~~~ setblock -103 19 35 quartz_block
execute @e[name=lvl27Hint,scores={stats=1}] ~~~ setblock -104 19 35 quartz_block
execute @e[name=lvl28Hint,scores={stats=1}] ~~~ setblock -105 19 35 quartz_block
execute @e[name=lvl29Hint,scores={stats=1}] ~~~ setblock -106 19 35 quartz_block
# execute @e[name=lvl30Hint,scores={stats=1}] ~~~ setblock -107 19 35 quartz_block

## 攻略部分
execute @e[name=lvl1Strategy,scores={stats=1}] ~~~ setblock -107 21 25 quartz_block
execute @e[name=lvl2Strategy,scores={stats=1}] ~~~ setblock -106 21 25 quartz_block
execute @e[name=lvl3Strategy,scores={stats=1}] ~~~ setblock -105 21 25 quartz_block
execute @e[name=lvl4Strategy,scores={stats=1}] ~~~ setblock -104 21 25 quartz_block
execute @e[name=lvl5Strategy,scores={stats=1}] ~~~ setblock -103 21 25 quartz_block
execute @e[name=lvl6Strategy,scores={stats=1}] ~~~ setblock -102 21 25 quartz_block
execute @e[name=lvl7Strategy,scores={stats=1}] ~~~ setblock -101 21 25 quartz_block
execute @e[name=lvl8Strategy,scores={stats=1}] ~~~ setblock -100 21 25 quartz_block
execute @e[name=lvl9Strategy,scores={stats=1}] ~~~ setblock -99 21 25 quartz_block
execute @e[name=lvl10Strategy,scores={stats=1}] ~~~ setblock -98 21 25 quartz_block
execute @e[name=lvl11Strategy,scores={stats=1}] ~~~ setblock -107 20 25 quartz_block
execute @e[name=lvl12Strategy,scores={stats=1}] ~~~ setblock -106 20 25 quartz_block
execute @e[name=lvl13Strategy,scores={stats=1}] ~~~ setblock -105 20 25 quartz_block
execute @e[name=lvl14Strategy,scores={stats=1}] ~~~ setblock -104 20 25 quartz_block
execute @e[name=lvl15Strategy,scores={stats=1}] ~~~ setblock -103 20 25 quartz_block
execute @e[name=lvl16Strategy,scores={stats=1}] ~~~ setblock -102 20 25 quartz_block
execute @e[name=lvl17Strategy,scores={stats=1}] ~~~ setblock -101 20 25 quartz_block
execute @e[name=lvl18Strategy,scores={stats=1}] ~~~ setblock -100 20 25 quartz_block
execute @e[name=lvl19Strategy,scores={stats=1}] ~~~ setblock -99 20 25 quartz_block
# execute @e[name=lvl20Strategy,scores={stats=1}] ~~~ setblock -98 20 25 quartz_block
# execute @e[name=lvl21Strategy,scores={stats=1}] ~~~ setblock -107 19 25 quartz_block
# execute @e[name=lvl22Strategy,scores={stats=1}] ~~~ setblock -106 19 25 quartz_block
execute @e[name=lvl23Strategy,scores={stats=1}] ~~~ setblock -105 19 25 quartz_block
execute @e[name=lvl24Strategy,scores={stats=1}] ~~~ setblock -104 19 25 quartz_block
execute @e[name=lvl25Strategy,scores={stats=1}] ~~~ setblock -103 19 25 quartz_block
execute @e[name=lvl26Strategy,scores={stats=1}] ~~~ setblock -102 19 25 quartz_block
execute @e[name=lvl27Strategy,scores={stats=1}] ~~~ setblock -101 19 25 quartz_block
execute @e[name=lvl28Strategy,scores={stats=1}] ~~~ setblock -100 19 25 quartz_block
execute @e[name=lvl29Strategy,scores={stats=1}] ~~~ setblock -99 19 25 quartz_block
# execute @e[name=lvl30Strategy,scores={stats=1}] ~~~ setblock -98 19 25 quartz_block

## 跳过部分
execute @e[name=lvl13Skip,scores={stats=1}] ~~~ setblock -110 21 31 quartz_block
execute @e[name=lvl31Skip,scores={stats=1}] ~~~ setblock -110 21 30 quartz_block
execute @e[name=lvl32Skip,scores={stats=1}] ~~~ setblock -110 21 29 quartz_block
execute @e[name=lvl20Skip,scores={stats=1}] ~~~ setblock -110 20 31 quartz_block
execute @e[name=lvl21Skip,scores={stats=1}] ~~~ setblock -110 20 30 quartz_block
execute @e[name=lvl22Skip,scores={stats=1}] ~~~ setblock -110 20 29 quartz_block
execute @e[name=lvl30Skip,scores={stats=1}] ~~~ setblock -110 19 30 quartz_block

# ===== 对于特殊关卡，停用红石灯 =====
## 提示部分 | 禁用20 21 22 30
setblock -107 20 34 minecraft:quartz_block
setblock -98 19 34 minecraft:quartz_block
setblock -99 19 34 minecraft:quartz_block
setblock -107 19 34 minecraft:quartz_block

## 跳过部分 | 禁用20 21 22 30
setblock -98 20 26 minecraft:quartz_block
setblock -107 19 26 minecraft:quartz_block
setblock -106 19 26 minecraft:quartz_block
setblock -98 19 26 minecraft:quartz_block

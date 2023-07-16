# 加载展示框

# ===== 初始化 =====
## 将所有进度的背景墙均改为石英块
execute @e[name=isNetease,scores={settings=0}] ~~~ structure load advancement_wall -101 19 20 0_degrees none
execute @e[name=isNetease,scores={settings=0}] ~~~ structure load advancement_wall -108 19 20 0_degrees none
execute @e[name=isNetease,scores={settings=0}] ~~~ structure load advancement_wall -101 19 11 0_degrees x
execute @e[name=isNetease,scores={settings=0}] ~~~ structure load advancement_wall -108 19 11 0_degrees x
execute @e[name=isNetease,scores={settings=1}] ~~~ structure load advancement_wall_netease -101 19 20 0_degrees none
execute @e[name=isNetease,scores={settings=1}] ~~~ structure load advancement_wall_netease -108 19 20 0_degrees none
execute @e[name=isNetease,scores={settings=1}] ~~~ structure load advancement_wall_netease -101 19 11 0_degrees x
execute @e[name=isNetease,scores={settings=1}] ~~~ structure load advancement_wall_netease -108 19 11 0_degrees x

## 4个分支主进度的展示框和背景墙
### 主线
execute @e[name=language,scores={settings=0}] ~~~ clone -96 11 20 -96 11 20 -97 21 20
execute @e[name=language,scores={settings=1}] ~~~ clone -96 10 20 -96 10 20 -97 21 20
setblock -97 21 21 wstd:quartz_block_with_line_2
### 大师
execute @e[name=language,scores={settings=0}] ~~~ clone -96 8 20 -96 8 20 -104 21 20
execute @e[name=language,scores={settings=1}] ~~~ clone -96 7 20 -96 7 20 -104 21 20
setblock -104 21 21 wstd:quartz_block_with_line_9
setblock -105 21 21 wstd:quartz_block_with_line_0
### 彩蛋
execute @e[name=language,scores={settings=0}] ~~~ clone -102 14 12 -102 14 12 -100 21 12
execute @e[name=language,scores={settings=1}] ~~~ clone -102 13 12 -102 13 12 -100 21 12
setblock -100 21 11 wstd:quartz_block_with_line_2
### 杂项
execute @e[name=language,scores={settings=0}] ~~~ clone -109 14 12 -109 14 12 -107 21 12
execute @e[name=language,scores={settings=1}] ~~~ clone -109 13 12 -109 13 12 -107 21 12
setblock -107 21 11 wstd:quartz_block_with_line_2

## 大师进度分支显示初始化 | 从-105 19 21到-105 23 21 从上到下依次为1-5号 | 1-3号由HJ进度决定，4号由HDE进度决定，5号由MS进度决定
### 5号背景墙（stats.advMoreSkilled=1时为折线，=0时为石英块）
execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ setblock -105 19 21 wstd:quartz_block_with_line_7
### 4号背景墙（MS,HDE=1,1时为三向线，=1,0时为竖线，=0,1时为折线）
#### 此处为了计算是否有others，用active.itemTester1&2来代替演算 | Halfway变量在未获取到相关进度前会不存在，所以换为itemTester1&2作为缓存
scoreboard players set @e[name=itemTester1] active 0
scoreboard players set @e[name=itemTester2] active 0
execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ scoreboard players set @e[name=itemTester1] active 1
execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ scoreboard players set @e[name=itemTester2] active 1

execute @e[name=itemTester1,scores={active=1}] ~~~ execute @e[name=itemTester2,scores={active=1}] ~~~ setblock -105 20 21 wstd:quartz_block_with_line_13
execute @e[name=itemTester1,scores={active=1}] ~~~ execute @e[name=itemTester2,scores={active=0}] ~~~ setblock -105 20 21 wstd:quartz_block_with_line_8
execute @e[name=itemTester1,scores={active=0}] ~~~ execute @e[name=itemTester2,scores={active=1}] ~~~ setblock -105 20 21 wstd:quartz_block_with_line_7
### 3号背景墙（HJ,others=1,1时为十字，=1,0时为三向线，=0,1时为折线）
#### 此处为了计算是否有others，用active.itemTester1&2来代替演算 | Halfway变量在未获取到相关进度前会不存在，所以换为itemTester1&2作为缓存
scoreboard players set @e[name=itemTester1] active 0
scoreboard players set @e[name=itemTester2] active 0
execute @e[name=advHalfWay,scores={stats=1}] ~~~ scoreboard players set @e[name=itemTester1] active 1
execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ scoreboard players set @e[name=itemTester2] active 1
execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ scoreboard players set @e[name=itemTester2] active 1

execute @e[name=itemTester1,scores={active=1}] ~~~ execute @e[name=itemTester2,scores={active=1}] ~~~ setblock -105 21 21 wstd:quartz_block_with_line_14
execute @e[name=itemTester1,scores={active=1}] ~~~ execute @e[name=itemTester2,scores={active=0}] ~~~ setblock -105 21 21 wstd:quartz_block_with_line_10
execute @e[name=itemTester1,scores={active=0}] ~~~ execute @e[name=itemTester2,scores={active=1}] ~~~ setblock -105 21 21 wstd:quartz_block_with_line_6
### 1 2号背景墙（只由HJ控制）
execute @e[name=advHalfWay,scores={stats=1}] ~~~ setblock -105 22 21 wstd:quartz_block_with_line_13
execute @e[name=advHalfWay,scores={stats=1}] ~~~ setblock -105 23 21 wstd:quartz_block_with_line_9

# ===== 各进度的加载 =====

## --- 主线 | 初来乍到 ---
### 未获取时
execute @e[name=advGetStarted,scores={stats=0}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -97 17 20 -97 17 20 -98 21 20
execute @e[name=advGetStarted,scores={stats=0}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -97 16 20 -97 16 20 -98 21 20
execute @e[name=advGetStarted,scores={stats=0}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ setblock -98 21 21 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advGetStarted,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -97 11 20 -97 11 20 -98 21 20
execute @e[name=advGetStarted,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -97 10 20 -97 10 20 -98 21 20
execute @e[name=advGetStarted,scores={stats=1}] ~~~ setblock -98 21 21 wstd:quartz_block_with_line_5

## --- 主线 | 小试牛刀 ---
### 未获取时
execute @e[name=advMoreSkilled,scores={stats=0}] ~~~ execute @e[name=advGetStarted,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -98 17 20 -98 17 20 -99 21 20
execute @e[name=advMoreSkilled,scores={stats=0}] ~~~ execute @e[name=advGetStarted,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -98 16 20 -98 16 20 -99 21 20
execute @e[name=advMoreSkilled,scores={stats=0}] ~~~ execute @e[name=advGetStarted,scores={stats=1}] ~~~ setblock -99 21 21 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -98 11 20 -98 11 20 -99 21 20
execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -98 10 20 -98 10 20 -99 21 20
execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ setblock -99 21 21 wstd:quartz_block_with_line_10

## --- 主线 | 半程旅途 ---
### 未获取时
execute @e[name=advHalfWay,scores={stats=0}] ~~~ execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -99 17 20 -99 17 20 -100 21 20
execute @e[name=advHalfWay,scores={stats=0}] ~~~ execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -99 16 20 -99 16 20 -100 21 20
execute @e[name=advHalfWay,scores={stats=0}] ~~~ execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ setblock -100 21 21 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -99 11 20 -99 11 20 -100 21 20
execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -99 10 20 -99 10 20 -100 21 20
execute @e[name=advHalfWay,scores={stats=1}] ~~~ setblock -100 21 21 wstd:quartz_block_with_line_12

## --- 主线 | 结束了！...吗？ ---
### 未获取时
execute @e[name=advTheEnd,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -100 17 20 -100 17 20 -101 21 20
execute @e[name=advTheEnd,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -100 16 20 -100 16 20 -101 21 20
execute @e[name=advTheEnd,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ setblock -101 21 21 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advTheEnd,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -100 11 20 -100 11 20 -101 21 20
execute @e[name=advTheEnd,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -100 10 20 -100 10 20 -101 21 20
execute @e[name=advTheEnd,scores={stats=1}] ~~~ setblock -101 21 21 wstd:quartz_block_with_line_4

## --- 主线 | 另辟蹊径 ---
### 未获取时
execute @e[name=advAnotherWay,scores={stats=0}] ~~~ execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -101 17 20 -101 17 20 -99 22 20
execute @e[name=advAnotherWay,scores={stats=0}] ~~~ execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -101 16 20 -101 16 20 -99 22 20
execute @e[name=advAnotherWay,scores={stats=0}] ~~~ execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ setblock -99 22 21 wstd:quartz_block_with_line_3
### 已获取时
execute @e[name=advAnotherWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -101 11 20 -101 11 20 -99 22 20
execute @e[name=advAnotherWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -101 10 20 -101 10 20 -99 22 20
execute @e[name=advAnotherWay,scores={stats=1}] ~~~ setblock -99 22 21 wstd:quartz_block_with_line_8

## --- 主线 | 为什么要这么摆放铁啊？ ---
### 未获取时
execute @e[name=advWhyPlaceIronLikeThis,scores={stats=0}] ~~~ execute @e[name=advAnotherWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -102 17 20 -102 17 20 -99 23 20
execute @e[name=advWhyPlaceIronLikeThis,scores={stats=0}] ~~~ execute @e[name=advAnotherWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -102 16 20 -102 16 20 -99 23 20
execute @e[name=advWhyPlaceIronLikeThis,scores={stats=0}] ~~~ execute @e[name=advAnotherWay,scores={stats=1}] ~~~ setblock -99 23 21 wstd:quartz_block_with_line_3
### 已获取时
execute @e[name=advWhyPlaceIronLikeThis,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -102 11 20 -102 11 20 -99 23 20
execute @e[name=advWhyPlaceIronLikeThis,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -102 10 20 -102 10 20 -99 23 20
execute @e[name=advWhyPlaceIronLikeThis,scores={stats=1}] ~~~ setblock -99 23 21 wstd:quartz_block_with_line_3

## --- 主线 | 满地的白色生物 ---
### 未获取时
execute @e[name=advWhiteMobsAnywhere,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -103 17 20 -103 17 20 -100 20 20
execute @e[name=advWhiteMobsAnywhere,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -103 16 20 -103 16 20 -100 20 20
execute @e[name=advWhiteMobsAnywhere,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ setblock -100 20 21 wstd:quartz_block_with_line_1
### 已获取时
execute @e[name=advWhiteMobsAnywhere,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -103 11 20 -103 11 20 -100 20 20
execute @e[name=advWhiteMobsAnywhere,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -103 10 20 -103 10 20 -100 20 20
execute @e[name=advWhiteMobsAnywhere,scores={stats=1}] ~~~ setblock -100 20 21 wstd:quartz_block_with_line_10

## --- 主线 | BUG! ---
### 未获取时
execute @e[name=advBug,scores={stats=0}] ~~~ execute @e[name=advWhiteMobsAnywhere,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -104 17 20 -104 17 20 -99 20 20
execute @e[name=advBug,scores={stats=0}] ~~~ execute @e[name=advWhiteMobsAnywhere,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -104 16 20 -104 16 20 -99 20 20
execute @e[name=advBug,scores={stats=0}] ~~~ execute @e[name=advWhiteMobsAnywhere,scores={stats=1}] ~~~ setblock -99 20 21 wstd:quartz_block_with_line_2
### 已获取时
execute @e[name=advBug,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -104 11 20 -104 11 20 -99 20 20
execute @e[name=advBug,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -104 10 20 -104 10 20 -99 20 20
execute @e[name=advBug,scores={stats=1}] ~~~ setblock -99 20 21 wstd:quartz_block_with_line_2

## --- 主线 | 幸运儿 ---
### 未获取时
execute @e[name=advLuckyGuy,scores={stats=0}] ~~~ execute @e[name=advWhiteMobsAnywhere,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -105 17 20 -105 17 20 -101 20 20
execute @e[name=advLuckyGuy,scores={stats=0}] ~~~ execute @e[name=advWhiteMobsAnywhere,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -105 16 20 -105 16 20 -101 20 20
execute @e[name=advLuckyGuy,scores={stats=0}] ~~~ execute @e[name=advWhiteMobsAnywhere,scores={stats=1}] ~~~ setblock -101 20 21 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advLuckyGuy,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -105 11 20 -105 11 20 -101 20 20
execute @e[name=advLuckyGuy,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -105 10 20 -105 10 20 -101 20 20
execute @e[name=advLuckyGuy,scores={stats=1}] ~~~ setblock -101 20 21 wstd:quartz_block_with_line_0

## --- 主线 | 禁止套娃 ---
### 未获取时
execute @e[name=advNoDolls,scores={stats=0}] ~~~ execute @e[name=advTheEnd,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -106 17 20 -106 17 20 -101 22 20
execute @e[name=advNoDolls,scores={stats=0}] ~~~ execute @e[name=advTheEnd,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -106 16 20 -106 16 20 -101 22 20
execute @e[name=advNoDolls,scores={stats=0}] ~~~ execute @e[name=advTheEnd,scores={stats=1}] ~~~ setblock -101 22 21 wstd:quartz_block_with_line_3
### 已获取时
execute @e[name=advNoDolls,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -106 11 20 -106 11 20 -101 22 20
execute @e[name=advNoDolls,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -106 10 20 -106 10 20 -101 22 20
execute @e[name=advNoDolls,scores={stats=1}] ~~~ setblock -101 22 21 wstd:quartz_block_with_line_3



## --- 大师 | 按钮！ ---
### 未获取时
execute @e[name=advButton,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -97 14 20 -97 14 20 -106 21 20
execute @e[name=advButton,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -97 13 20 -97 13 20 -106 21 20
execute @e[name=advButton,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ setblock -106 21 21 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advButton,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -97 8 20 -97 8 20 -106 21 20
execute @e[name=advButton,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -97 7 20 -97 7 20 -106 21 20
execute @e[name=advButton,scores={stats=1}] ~~~ setblock -106 21 21 wstd:quartz_block_with_line_5

## --- 大师 | 又双叒叕是按钮 ---
### 未获取时
execute @e[name=advButtonAgain,scores={stats=0}] ~~~ execute @e[name=advButton,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -98 14 20 -98 14 20 -107 21 20
execute @e[name=advButtonAgain,scores={stats=0}] ~~~ execute @e[name=advButton,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -98 13 20 -98 13 20 -107 21 20
execute @e[name=advButtonAgain,scores={stats=0}] ~~~ execute @e[name=advButton,scores={stats=1}] ~~~ setblock -107 21 21 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advButtonAgain,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -98 8 20 -98 8 20 -107 21 20
execute @e[name=advButtonAgain,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -98 7 20 -98 7 20 -107 21 20
execute @e[name=advButtonAgain,scores={stats=1}] ~~~ setblock -107 21 21 wstd:quartz_block_with_line_5

## --- 大师 | 不是吧？还有？ ---
### 未获取时
execute @e[name=advNoMoreButton,scores={stats=0}] ~~~ execute @e[name=advButtonAgain,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -99 14 20 -99 14 20 -108 21 20
execute @e[name=advNoMoreButton,scores={stats=0}] ~~~ execute @e[name=advButtonAgain,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -99 13 20 -99 13 20 -108 21 20
execute @e[name=advNoMoreButton,scores={stats=0}] ~~~ execute @e[name=advButtonAgain,scores={stats=1}] ~~~ setblock -108 21 21 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advNoMoreButton,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -99 8 20 -99 8 20 -108 21 20
execute @e[name=advNoMoreButton,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -99 7 20 -99 7 20 -108 21 20
execute @e[name=advNoMoreButton,scores={stats=1}] ~~~ setblock -108 21 21 wstd:quartz_block_with_line_0

## --- 大师 | 酿造家 ---
### 未获取时
execute @e[name=advBrewingMaster,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -100 14 20 -100 14 20 -106 23 20
execute @e[name=advBrewingMaster,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -100 13 20 -100 13 20 -106 23 20
execute @e[name=advBrewingMaster,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ setblock -106 23 21 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advBrewingMaster,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -100 8 20 -100 8 20 -106 23 20
execute @e[name=advBrewingMaster,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -100 7 20 -100 7 20 -106 23 20
execute @e[name=advBrewingMaster,scores={stats=1}] ~~~ setblock -106 23 21 wstd:quartz_block_with_line_0

## --- 大师 | 生存家 ---
### 未获取时
execute @e[name=advSurviveMaster,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -101 14 20 -101 14 20 -106 22 20
execute @e[name=advSurviveMaster,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -101 13 20 -101 13 20 -106 22 20
execute @e[name=advSurviveMaster,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ setblock -106 22 21 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advSurviveMaster,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -101 8 20 -101 8 20 -106 22 20
execute @e[name=advSurviveMaster,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -101 7 20 -101 7 20 -106 22 20
execute @e[name=advSurviveMaster,scores={stats=1}] ~~~ setblock -106 22 21 wstd:quartz_block_with_line_5

## --- 大师 | 绿宝石！ ---
### 未获取时
execute @e[name=advEmerald,scores={stats=0}] ~~~ execute @e[name=advSurviveMaster,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -102 14 20 -102 14 20 -107 22 20
execute @e[name=advEmerald,scores={stats=0}] ~~~ execute @e[name=advSurviveMaster,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -102 13 20 -102 13 20 -107 22 20
execute @e[name=advEmerald,scores={stats=0}] ~~~ execute @e[name=advSurviveMaster,scores={stats=1}] ~~~ setblock -107 22 21 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advEmerald,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -102 8 20 -102 8 20 -107 22 20
execute @e[name=advEmerald,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -102 7 20 -102 7 20 -107 22 20
execute @e[name=advEmerald,scores={stats=1}] ~~~ setblock -107 22 21 wstd:quartz_block_with_line_0

## --- 大师 | 红石家 ---
### 未获取时
execute @e[name=advRedstoneMaster,scores={stats=0}] ~~~ execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -103 14 20 -103 14 20 -106 19 20
execute @e[name=advRedstoneMaster,scores={stats=0}] ~~~ execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -103 13 20 -103 13 20 -106 19 20
execute @e[name=advRedstoneMaster,scores={stats=0}] ~~~ execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ setblock -106 19 21 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advRedstoneMaster,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -103 8 20 -103 8 20 -106 19 20
execute @e[name=advRedstoneMaster,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -103 7 20 -103 7 20 -106 19 20
execute @e[name=advRedstoneMaster,scores={stats=1}] ~~~ setblock -106 19 21 wstd:quartz_block_with_line_0

## --- 大师 | 神速 ---
### 未获取时
execute @e[name=advSoFast,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -104 14 20 -104 14 20 -106 20 20
execute @e[name=advSoFast,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -104 13 20 -104 13 20 -106 20 20
execute @e[name=advSoFast,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ setblock -106 20 21 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advSoFast,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -104 8 20 -104 8 20 -106 20 20
execute @e[name=advSoFast,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -104 7 20 -104 7 20 -106 20 20
execute @e[name=advSoFast,scores={stats=1}] ~~~ setblock -106 20 21 wstd:quartz_block_with_line_5

## --- 大师 | 这也能速通？ ---
### 未获取时
execute @e[name=advHowCanYouSpeedrun,scores={stats=0}] ~~~ execute @e[name=advSoFast,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -105 14 20 -105 14 20 -107 20 20
execute @e[name=advHowCanYouSpeedrun,scores={stats=0}] ~~~ execute @e[name=advSoFast,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -105 13 20 -105 13 20 -107 20 20
execute @e[name=advHowCanYouSpeedrun,scores={stats=0}] ~~~ execute @e[name=advSoFast,scores={stats=1}] ~~~ setblock -107 20 21 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advHowCanYouSpeedrun,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -105 8 20 -105 8 20 -107 20 20
execute @e[name=advHowCanYouSpeedrun,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -105 7 20 -105 7 20 -107 20 20
execute @e[name=advHowCanYouSpeedrun,scores={stats=1}] ~~~ setblock -107 20 21 wstd:quartz_block_with_line_0

## --- 大师 | 结束了！ ---
### 未获取时
execute @e[name=advTheRealEnd,scores={stats=0}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -106 14 20 -106 14 20 -104 20 20
execute @e[name=advTheRealEnd,scores={stats=0}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -106 13 20 -106 13 20 -104 20 20
execute @e[name=advTheRealEnd,scores={stats=0}] ~~~ setblock -104 20 21 wstd:quartz_block_with_line_1
### 已获取时
execute @e[name=advTheRealEnd,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -106 8 20 -106 8 20 -104 20 20
execute @e[name=advTheRealEnd,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -106 7 20 -106 7 20 -104 20 20
execute @e[name=advTheRealEnd,scores={stats=1}] ~~~ setblock -104 20 21 wstd:quartz_block_with_line_1



## --- 彩蛋 | 藏得够深的！ ---
### 未获取时
execute @e[name=advEasterEggFound,scores={stats=0}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -101 17 12 -101 17 12 -99 21 12
execute @e[name=advEasterEggFound,scores={stats=0}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -101 16 12 -101 16 12 -99 21 12
execute @e[name=advEasterEggFound,scores={stats=0}] ~~~ setblock -99 21 11 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -101 14 12 -101 14 12 -99 21 12
execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -101 13 12 -101 13 12 -99 21 12
execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ setblock -99 21 11 wstd:quartz_block_with_line_14

## --- 彩蛋 | 我还以为是跑酷 ---
### 未获取时
execute @e[name=advNotAParkour,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -100 17 12 -100 17 12 -99 22 12
execute @e[name=advNotAParkour,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -100 16 12 -100 16 12 -99 22 12
execute @e[name=advNotAParkour,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ setblock -99 22 11 wstd:quartz_block_with_line_3
### 已获取时
execute @e[name=advNotAParkour,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -100 14 12 -100 14 12 -99 22 12
execute @e[name=advNotAParkour,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -100 13 12 -100 13 12 -99 22 12
execute @e[name=advNotAParkour,scores={stats=1}] ~~~ setblock -99 22 11 wstd:quartz_block_with_line_3

## --- 彩蛋 | 超级好评！ ---
### 未获取时
execute @e[name=advSuperLike,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -99 17 12 -99 17 12 -99 20 12
execute @e[name=advSuperLike,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -99 16 12 -99 16 12 -99 20 12
execute @e[name=advSuperLike,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ setblock -99 20 11 wstd:quartz_block_with_line_1
### 已获取时
execute @e[name=advSuperLike,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -99 14 12 -99 14 12 -99 20 12
execute @e[name=advSuperLike,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -99 13 12 -99 13 12 -99 20 12
execute @e[name=advSuperLike,scores={stats=1}] ~~~ setblock -99 20 11 wstd:quartz_block_with_line_8

## --- 彩蛋 | 钢铁侠！ ---
### 未获取时
execute @e[name=advIronman,scores={stats=0}] ~~~ execute @e[name=advSuperLike,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -98 17 12 -98 17 12 -99 19 12
execute @e[name=advIronman,scores={stats=0}] ~~~ execute @e[name=advSuperLike,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -98 16 12 -98 16 12 -99 19 12
execute @e[name=advIronman,scores={stats=0}] ~~~ execute @e[name=advSuperLike,scores={stats=1}] ~~~ setblock -99 19 11 wstd:quartz_block_with_line_1
### 已获取时
execute @e[name=advIronman,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -98 14 12 -98 14 12 -99 19 12
execute @e[name=advIronman,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -98 13 12 -98 13 12 -99 19 12
execute @e[name=advIronman,scores={stats=1}] ~~~ setblock -99 19 11 wstd:quartz_block_with_line_1

## --- 彩蛋 | 好耶！ ---
### 未获取时
execute @e[name=advYes,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -97 17 12 -97 17 12 -98 21 12
execute @e[name=advYes,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -97 16 12 -97 16 12 -98 21 12
execute @e[name=advYes,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ setblock -98 21 11 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advYes,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -97 14 12 -97 14 12 -98 21 12
execute @e[name=advYes,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -97 13 12 -97 13 12 -98 21 12
execute @e[name=advYes,scores={stats=1}] ~~~ setblock -98 21 11 wstd:quartz_block_with_line_0



## --- 杂项 | 让我康康 ---
### 未获取时
execute @e[name=advLetMeSee,scores={stats=0}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -108 17 12 -108 17 12 -106 21 12
execute @e[name=advLetMeSee,scores={stats=0}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -108 16 12 -108 16 12 -106 21 12
execute @e[name=advLetMeSee,scores={stats=0}] ~~~ setblock -106 21 11 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advLetMeSee,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -108 14 12 -108 14 12 -106 21 12
execute @e[name=advLetMeSee,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -108 13 12 -108 13 12 -106 21 12
execute @e[name=advLetMeSee,scores={stats=1}] ~~~ setblock -106 21 11 wstd:quartz_block_with_line_12

## --- 杂项 | 庆典 ---
### 未获取时
execute @e[name=advCelebration,scores={stats=0}] ~~~ execute @e[name=advLetMeSee,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -107 17 12 -107 17 12 -106 20 12
execute @e[name=advCelebration,scores={stats=0}] ~~~ execute @e[name=advLetMeSee,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -107 16 12 -107 16 12 -106 20 12
execute @e[name=advCelebration,scores={stats=0}] ~~~ execute @e[name=advLetMeSee,scores={stats=1}] ~~~ setblock -106 20 11 wstd:quartz_block_with_line_1
### 已获取时
execute @e[name=advCelebration,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -107 14 12 -107 14 12 -106 20 12
execute @e[name=advCelebration,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -107 13 12 -107 13 12 -106 20 12
execute @e[name=advCelebration,scores={stats=1}] ~~~ setblock -106 20 11 wstd:quartz_block_with_line_1

## --- 杂项 | 是谁？ ---
### 未获取时
execute @e[name=advWho,scores={stats=0}] ~~~ execute @e[name=advLetMeSee,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -106 17 12 -106 17 12 -105 21 12
execute @e[name=advWho,scores={stats=0}] ~~~ execute @e[name=advLetMeSee,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -106 16 12 -106 16 12 -105 21 12
execute @e[name=advWho,scores={stats=0}] ~~~ execute @e[name=advLetMeSee,scores={stats=1}] ~~~ setblock -105 21 11 wstd:quartz_block_with_line_0
### 已获取时
execute @e[name=advWho,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -106 14 12 -106 14 12 -105 21 12
execute @e[name=advWho,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -106 13 12 -106 13 12 -105 21 12
execute @e[name=advWho,scores={stats=1}] ~~~ setblock -105 21 11 wstd:quartz_block_with_line_4

## --- 杂项 | DIY ---
### 未获取时
execute @e[name=advDiy,scores={stats=0}] ~~~ execute @e[name=advWho,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -105 17 12 -105 17 12 -105 22 12
execute @e[name=advDiy,scores={stats=0}] ~~~ execute @e[name=advWho,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -105 16 12 -105 16 12 -105 22 12
execute @e[name=advDiy,scores={stats=0}] ~~~ execute @e[name=advWho,scores={stats=1}] ~~~ setblock -105 22 11 wstd:quartz_block_with_line_3
### 已获取时
execute @e[name=advDiy,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -105 14 12 -105 14 12 -105 22 12
execute @e[name=advDiy,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -105 13 12 -105 13 12 -105 22 12
execute @e[name=advDiy,scores={stats=1}] ~~~ setblock -105 22 11 wstd:quartz_block_with_line_8

## --- 杂项 | 欣赏，观望 ---
### 未获取时
execute @e[name=advAppreciateAndWatch,scores={stats=0}] ~~~ execute @e[name=advDiy,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -104 17 12 -104 17 12 -105 23 12
execute @e[name=advAppreciateAndWatch,scores={stats=0}] ~~~ execute @e[name=advDiy,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -104 16 12 -104 16 12 -105 23 12
execute @e[name=advAppreciateAndWatch,scores={stats=0}] ~~~ execute @e[name=advDiy,scores={stats=1}] ~~~ setblock -105 23 11 wstd:quartz_block_with_line_3
### 已获取时
execute @e[name=advAppreciateAndWatch,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ clone -104 14 12 -104 14 12 -105 23 12
execute @e[name=advAppreciateAndWatch,scores={stats=1}] ~~~ execute @e[name=language,scores={settings=1}] ~~~ clone -104 13 12 -104 13 12 -105 23 12
execute @e[name=advAppreciateAndWatch,scores={stats=1}] ~~~ setblock -105 23 11 wstd:quartz_block_with_line_3

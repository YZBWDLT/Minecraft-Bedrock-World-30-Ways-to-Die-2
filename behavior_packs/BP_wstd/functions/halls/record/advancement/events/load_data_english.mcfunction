# ===== 加载进度中心展示框 =====
# 加载英文的展示框

# --- 加载背景墙 ---

structure load system:advancement_wall -101 19 20 0_degrees none
structure load system:advancement_wall -108 19 20 0_degrees none
structure load system:advancement_wall -101 19 11 0_degrees x
structure load system:advancement_wall -108 19 11 0_degrees x

# --- 主线分支主进度 ---

## 复制展示框
clone -96 10 20 -96 10 20 -97 21 20
## 复制背景的石英块线
setblock -97 21 21 wstd:quartz_block_with_line_2

# --- 大师分支主进度 ---

## 复制展示框
clone -96 7 20 -96 7 20 -104 21 20
## ~ 复制背景的石英块线 ~
setblock -104 21 21 wstd:quartz_block_with_line_9

## [小试牛刀] 0 | [半程旅途] 0 | [藏得够深的！] 0 => /   /   0   /   / (从上到下5个划线石英块的类型)
## [小试牛刀] 0 | [半程旅途] 0 | [藏得够深的！] 0 =>  /   /   6   7   /
## [小试牛刀] 1 | [半程旅途] 0 | [藏得够深的！] 0 =>  /   /   6   8   7
## [小试牛刀] 1 | [半程旅途] 0 | [藏得够深的！] 1 =>   /   /   6   13  7
## [小试牛刀] 1 | [半程旅途] 1 | [藏得够深的！] 0 =>   13  13  14  8   7
## [小试牛刀] 1 | [半程旅途] 1 | [藏得够深的！] 1 =>    13  13  14  13  7
## 综上，执行以下内容：
## * 第1位仅当[半程旅途]已完成，放置9号
execute if score advancement.halfWay record matches 1 run setblock -105 23 21 wstd:quartz_block_with_line_9
## * 第2位仅当[半程旅途]已完成，放置13号
execute if score advancement.halfWay record matches 1 run setblock -105 22 21 wstd:quartz_block_with_line_13
## * 第3位其余情况放置6号；
setblock -105 21 21 wstd:quartz_block_with_line_6
##        当[半程旅途]已完成，放置14号；
execute if score advancement.halfWay record matches 1 run setblock -105 21 21 wstd:quartz_block_with_line_14
##        3个进度都未解锁的，放置0号；
execute if score advancement.halfWay record matches -1..0 if score advancement.moreSkilled record matches -1..0 if score advancement.easterEggFound record matches -1..0 run setblock -105 21 21 wstd:quartz_block_with_line_0
## * 第4位当[藏得够深的！]已完成且[小试牛刀]已完成，放置13号；
execute if score advancement.moreSkilled record matches 1 if score advancement.easterEggFound record matches 1 run setblock -105 20 21 wstd:quartz_block_with_line_13
##        当[藏得够深的！]未已完成但[小试牛刀]已完成，放置8号；
execute if score advancement.moreSkilled record matches 1 if score advancement.easterEggFound record matches 0 run setblock -105 20 21 wstd:quartz_block_with_line_8
##        当[藏得够深的！]已完成但[小试牛刀]未已完成，放置7号；
execute if score advancement.moreSkilled record matches 0 if score advancement.easterEggFound record matches 1 run setblock -105 20 21 wstd:quartz_block_with_line_7
## * 第5位当[小试牛刀]已完成，放置7号
execute if score advancement.moreSkilled record matches 1 run setblock -105 19 21 wstd:quartz_block_with_line_7

# --- 彩蛋分支主进度 ---

## 复制展示框
clone -102 13 12 -102 13 12 -100 21 12
## 复制背景的石英块线
setblock -100 21 11 wstd:quartz_block_with_line_2

# --- 杂项分支主进度 ---

## 复制展示框
clone -109 13 12 -109 13 12 -107 21 12
## 复制背景的石英块线
setblock -107 21 11 wstd:quartz_block_with_line_2

# --- 主线 | 初来乍到 ---

## 未获取该进度时 | 复制展示框与0号石英块线
execute if score advancement.getStarted record matches 0 run clone -97 16 20 -97 16 20 -98 21 20
execute if score advancement.getStarted record matches 0 run setblock -98 21 21 wstd:quartz_block_with_line_0
## 已获取该进度时 | 复制展示框与5号石英块线
execute if score advancement.getStarted record matches 1 run clone -97 10 20 -97 10 20 -98 21 20
execute if score advancement.getStarted record matches 1 run setblock -98 21 21 wstd:quartz_block_with_line_5

# --- 主线 | 小试牛刀 ---

## 未获取该进度时 | 复制展示框与0号石英块线
##      ↓ 当前进度未完成                                   ↓ 前置进度已完成
execute if score advancement.moreSkilled record matches 0 if score advancement.getStarted record matches 1 run clone -98 16 20 -98 16 20 -99 21 20
execute if score advancement.moreSkilled record matches 0 if score advancement.getStarted record matches 1 run setblock -99 21 21 wstd:quartz_block_with_line_0
## 已获取该进度时 | 复制展示框与10号石英块线
execute if score advancement.moreSkilled record matches 1 run clone -98 10 20 -98 10 20 -99 21 20
execute if score advancement.moreSkilled record matches 1 run setblock -99 21 21 wstd:quartz_block_with_line_10

# --- 主线 | 半程旅途 ---

## 未获取该进度时 | 复制展示框与0号石英块线
execute if score advancement.halfWay record matches 0 if score advancement.moreSkilled record matches 1 run clone -99 16 20 -99 16 20 -100 21 20
execute if score advancement.halfWay record matches 0 if score advancement.moreSkilled record matches 1 run setblock -100 21 21 wstd:quartz_block_with_line_0
## 已获取该进度时 | 复制展示框与12号石英块线
execute if score advancement.halfWay record matches 1 run clone -99 10 20 -99 10 20 -100 21 20
execute if score advancement.halfWay record matches 1 run setblock -100 21 21 wstd:quartz_block_with_line_12

# --- 主线 | 结束了！...吗？ ---

## 未获取该进度时 | 复制展示框与0号石英块线
execute if score advancement.theEnd record matches 0 if score advancement.halfWay record matches 1 run clone -100 16 20 -100 16 20 -101 21 20
execute if score advancement.theEnd record matches 0 if score advancement.halfWay record matches 1 run setblock -101 21 21 wstd:quartz_block_with_line_0
## 已获取该进度时 | 复制展示框与4号石英块线
execute if score advancement.theEnd record matches 1 run clone -100 10 20 -100 10 20 -101 21 20
execute if score advancement.theEnd record matches 1 run setblock -101 21 21 wstd:quartz_block_with_line_4

# --- 主线 | 另辟蹊径 ---

## 未获取该进度时 | 复制展示框与3号石英块线
execute if score advancement.anotherWay record matches 0 if score advancement.moreSkilled record matches 1 run clone -101 16 20 -101 16 20 -99 22 20
execute if score advancement.anotherWay record matches 0 if score advancement.moreSkilled record matches 1 run setblock -99 22 21 wstd:quartz_block_with_line_3
## 已获取该进度时 | 复制展示框与8号石英块线
execute if score advancement.anotherWay record matches 1 run clone -101 10 20 -101 10 20 -99 22 20
execute if score advancement.anotherWay record matches 1 run setblock -99 22 21 wstd:quartz_block_with_line_8

# --- 主线 | 为什么要这么摆放铁啊？ ---

## 未获取该进度时 | 复制展示框
execute if score advancement.whyPlaceIronLikeThis record matches 0 if score advancement.anotherWay record matches 1 run clone -102 16 20 -102 16 20 -99 23 20
## 已获取该进度时 | 复制展示框
execute if score advancement.whyPlaceIronLikeThis record matches 1 run clone -102 10 20 -102 10 20 -99 23 20
## 若该进度已解锁，放置3号石英块线（终点进度）
execute if score advancement.whyPlaceIronLikeThis record matches 0..1 run setblock -99 23 21 wstd:quartz_block_with_line_3

# --- 主线 | 满地的白色生物 ---

## 未获取该进度时 | 复制展示框与1号石英块线
execute if score advancement.whiteMobsAnywhere record matches 0 if score advancement.halfWay record matches 1 run clone -103 16 20 -103 16 20 -100 20 20
execute if score advancement.whiteMobsAnywhere record matches 0 if score advancement.halfWay record matches 1 run setblock -100 20 21 wstd:quartz_block_with_line_1
## 已获取该进度时 | 复制展示框与10号石英块线
execute if score advancement.whiteMobsAnywhere record matches 1 run clone -103 10 20 -103 10 20 -100 20 20
execute if score advancement.whiteMobsAnywhere record matches 1 run setblock -100 20 21 wstd:quartz_block_with_line_10

# --- 主线 | BUG! ---

## 未获取该进度时 | 复制展示框
execute if score advancement.bug record matches 0 if score advancement.whiteMobsAnywhere record matches 1 run clone -104 16 20 -104 16 20 -99 20 20
## 已获取该进度时 | 复制展示框
execute if score advancement.bug record matches 1 run clone -104 10 20 -104 10 20 -99 20 20
## 若该进度已解锁，放置2号石英块线（终点进度）
execute if score advancement.bug record matches 0..1 run setblock -99 20 21 wstd:quartz_block_with_line_2

# --- 主线 | 幸运儿 ---

## 未获取该进度时 | 复制展示框
execute if score advancement.luckyGuy record matches 0 if score advancement.whiteMobsAnywhere record matches 1 run clone -105 16 20 -105 16 20 -101 20 20
## 已获取该进度时 | 复制展示框
execute if score advancement.luckyGuy record matches 1 run clone -105 10 20 -105 10 20 -101 20 20
## 若该进度已解锁，放置0号石英块线（终点进度）
execute if score advancement.luckyGuy record matches 0..1 run setblock -101 20 21 wstd:quartz_block_with_line_0

# --- 主线 | 禁止套娃 ---

## 未获取该进度时 | 复制展示框
execute if score advancement.noDolls record matches 0 if score advancement.theEnd record matches 1 run clone -106 16 20 -106 16 20 -101 22 20
## 已获取该进度时 | 复制展示框
execute if score advancement.noDolls record matches 1 run clone -106 10 20 -106 10 20 -101 22 20
## 若该进度已解锁，放置3号石英块线（终点进度）
execute if score advancement.noDolls record matches 0..1 run setblock -101 22 21 wstd:quartz_block_with_line_3

# --- 大师 | 按钮！ ---

## 未获取该进度时 | 复制展示框与0号石英块线
execute if score advancement.button record matches 0 if score advancement.halfWay record matches 1 run clone -97 13 20 -97 13 20 -106 21 20
execute if score advancement.button record matches 0 if score advancement.halfWay record matches 1 run setblock -106 21 21 wstd:quartz_block_with_line_0
## 已获取该进度时 | 复制展示框与5号石英块线
execute if score advancement.button record matches 1 run clone -97 7 20 -97 7 20 -106 21 20
execute if score advancement.button record matches 1 run setblock -106 21 21 wstd:quartz_block_with_line_5

# --- 大师 | 又双叒叕是按钮 ---

## 未获取该进度时 | 复制展示框与0号石英块线
execute if score advancement.buttonAgain record matches 0 if score advancement.button record matches 1 run clone -98 13 20 -98 13 20 -107 21 20
execute if score advancement.buttonAgain record matches 0 if score advancement.button record matches 1 run setblock -107 21 21 wstd:quartz_block_with_line_0
## 已获取该进度时 | 复制展示框与5号石英块线
execute if score advancement.buttonAgain record matches 1 run clone -98 7 20 -98 7 20 -107 21 20
execute if score advancement.buttonAgain record matches 1 run setblock -107 21 21 wstd:quartz_block_with_line_5

# --- 大师 | 不是吧？还有？ ---

## 未获取该进度时 | 复制展示框
execute if score advancement.noMoreButton record matches 0 if score advancement.buttonAgain record matches 1 run clone -99 13 20 -99 13 20 -108 21 20
## 已获取该进度时 | 复制展示框
execute if score advancement.noMoreButton record matches 1 run clone -99 7 20 -99 7 20 -108 21 20
## 若该进度已解锁，放置0号石英块线（终点进度）
execute if score advancement.noMoreButton record matches 0..1 run setblock -108 21 21 wstd:quartz_block_with_line_0

# --- 大师 | 酿造家 ---

## 未获取该进度时 | 复制展示框
execute if score advancement.brewingMaster record matches 0 if score advancement.halfWay record matches 1 run clone -100 13 20 -100 13 20 -106 23 20
## 已获取该进度时 | 复制展示框
execute if score advancement.brewingMaster record matches 1 run clone -100 7 20 -100 7 20 -106 23 20
## 若该进度已解锁，放置0号石英块线（终点进度）
execute if score advancement.brewingMaster record matches 0..1 run setblock -106 23 21 wstd:quartz_block_with_line_0

# --- 大师 | 生存家 ---

## 未获取该进度时 | 复制展示框与0号石英块线
execute if score advancement.surviveMaster record matches 0 if score advancement.halfWay record matches 1 run clone -101 13 20 -101 13 20 -106 22 20
execute if score advancement.surviveMaster record matches 0 if score advancement.halfWay record matches 1 run setblock -106 22 21 wstd:quartz_block_with_line_0
## 已获取该进度时 | 复制展示框与5号石英块线
execute if score advancement.surviveMaster record matches 1 run clone -101 7 20 -101 7 20 -106 22 20
execute if score advancement.surviveMaster record matches 1 run setblock -106 22 21 wstd:quartz_block_with_line_5

# --- 大师 | 绿宝石！ ---

## 未获取该进度时 | 复制展示框
execute if score advancement.emerald record matches 0 if score advancement.surviveMaster record matches 1 run clone -102 13 20 -102 13 20 -107 22 20
## 已获取该进度时 | 复制展示框
execute if score advancement.emerald record matches 1 run clone -102 7 20 -102 7 20 -107 22 20
## 若该进度已解锁，放置0号石英块线（终点进度）
execute if score advancement.emerald record matches 0..1 run setblock -107 22 21 wstd:quartz_block_with_line_0

# --- 大师 | 红石家 ---

## 未获取该进度时 | 复制展示框
execute if score advancement.redstoneMaster record matches 0 if score advancement.moreSkilled record matches 1 run clone -103 13 20 -103 13 20 -106 19 20
## 已获取该进度时 | 复制展示框
execute if score advancement.redstoneMaster record matches 1 run clone -103 7 20 -103 7 20 -106 19 20
## 若该进度已解锁，放置0号石英块线（终点进度）
execute if score advancement.redstoneMaster record matches 0..1 run setblock -106 19 21 wstd:quartz_block_with_line_0

# --- 大师 | 神速 ---

## 未获取该进度时 | 复制展示框与0号石英块线
execute if score advancement.soFast record matches 0 if score advancement.easterEggFound record matches 1 run clone -104 13 20 -104 13 20 -106 20 20
execute if score advancement.soFast record matches 0 if score advancement.easterEggFound record matches 1 run setblock -106 20 21 wstd:quartz_block_with_line_0
## 已获取该进度时 | 复制展示框与5号石英块线
execute if score advancement.soFast record matches 1 run clone -104 7 20 -104 7 20 -106 20 20
execute if score advancement.soFast record matches 1 run setblock -106 20 21 wstd:quartz_block_with_line_5

# --- 大师 | 这也能速通？ ---

## 未获取该进度时 | 复制展示框
execute if score advancement.howCanYouSpeedrun record matches 0 if score advancement.soFast record matches 1 run clone -105 13 20 -105 13 20 -107 20 20
## 已获取该进度时 | 复制展示框
execute if score advancement.howCanYouSpeedrun record matches 1 run clone -105 7 20 -105 7 20 -107 20 20
## 若该进度已解锁，放置0号石英块线（终点进度）
execute if score advancement.howCanYouSpeedrun record matches 0..1 run setblock -107 20 21 wstd:quartz_block_with_line_0

# --- 大师 | 结束了！ ---

## 未获取该进度时 | 复制展示框
execute if score advancement.theRealEnd record matches 0 run clone -106 13 20 -106 13 20 -104 20 20
## 已获取该进度时 | 复制展示框
execute if score advancement.theRealEnd record matches 1 run clone -106 7 20 -106 7 20 -104 20 20
## 若该进度已解锁，放置1号石英块线（终点进度）
execute if score advancement.theRealEnd record matches 0..1 run setblock -104 20 21 wstd:quartz_block_with_line_1

# --- 彩蛋 | 藏得够深的！ ---

## 未获取该进度时 | 复制展示框与0号石英块线
execute if score advancement.easterEggFound record matches 0 run clone -101 16 12 -101 16 12 -99 21 12
execute if score advancement.easterEggFound record matches 0 run setblock -99 21 11 wstd:quartz_block_with_line_0
## 已获取该进度时 | 复制展示框与5号石英块线
execute if score advancement.easterEggFound record matches 1 run clone -101 13 12 -101 13 12 -99 21 12
execute if score advancement.easterEggFound record matches 1 run setblock -99 21 11 wstd:quartz_block_with_line_14

# --- 彩蛋 | 我还以为是跑酷 ---

## 未获取该进度时 | 复制展示框
execute if score advancement.notAParkour record matches 0 if score advancement.easterEggFound record matches 1 run clone -100 16 12 -100 16 12 -99 22 12
## 已获取该进度时 | 复制展示框
execute if score advancement.notAParkour record matches 1 run clone -100 13 12 -100 13 12 -99 22 12
## 若该进度已解锁，放置3号石英块线（终点进度）
execute if score advancement.notAParkour record matches 0..1 run setblock -99 22 11 wstd:quartz_block_with_line_3

# --- 彩蛋 | 超级好评！ ---

## 未获取该进度时 | 复制展示框与1号石英块线
execute if score advancement.superLike record matches 0 if score advancement.easterEggFound record matches 1 run clone -99 16 12 -99 16 12 -99 20 12
execute if score advancement.superLike record matches 0 if score advancement.easterEggFound record matches 1 run setblock -99 20 11 wstd:quartz_block_with_line_1
## 已获取该进度时 | 复制展示框与8号石英块线
execute if score advancement.superLike record matches 1 run clone -99 13 12 -99 13 12 -99 20 12
execute if score advancement.superLike record matches 1 run setblock -99 20 11 wstd:quartz_block_with_line_8

# --- 彩蛋 | 钢铁侠！ ---

## 未获取该进度时 | 复制展示框
execute if score advancement.ironman record matches 0 if score advancement.superLike record matches 1 run clone -98 16 12 -98 16 12 -99 19 12
## 已获取该进度时 | 复制展示框
execute if score advancement.ironman record matches 1 run clone -98 13 12 -98 13 12 -99 19 12
## 若该进度已解锁，放置1号石英块线（终点进度）
execute if score advancement.ironman record matches 0..1 run setblock -99 19 11 wstd:quartz_block_with_line_1

# --- 彩蛋 | 好耶！ ---

## 未获取该进度时 | 复制展示框
execute if score advancement.yes record matches 0 if score advancement.easterEggFound record matches 1 run clone -97 16 12 -97 16 12 -98 21 12
## 已获取该进度时 | 复制展示框
execute if score advancement.yes record matches 1 run clone -97 13 12 -97 13 12 -98 21 12
## 若该进度已解锁，放置0号石英块线（终点进度）
execute if score advancement.yes record matches 0..1 run setblock -98 21 11 wstd:quartz_block_with_line_0

# --- 杂项 | 让我康康 ---

## 未获取该进度时 | 复制展示框与0号石英块线
execute if score advancement.letMeSee record matches 0 run clone -108 16 12 -108 16 12 -106 21 12
execute if score advancement.letMeSee record matches 0 run setblock -106 21 11 wstd:quartz_block_with_line_0
## 已获取该进度时 | 复制展示框与12号石英块线
execute if score advancement.letMeSee record matches 1 run clone -108 13 12 -108 13 12 -106 21 12
execute if score advancement.letMeSee record matches 1 run setblock -106 21 11 wstd:quartz_block_with_line_12

# --- 杂项 | 庆典 ---

## 未获取该进度时 | 复制展示框
execute if score advancement.celebration record matches 0 if score advancement.letMeSee record matches 1 run clone -107 16 12 -107 16 12 -106 20 12
## 已获取该进度时 | 复制展示框
execute if score advancement.celebration record matches 1 run clone -107 13 12 -107 13 12 -106 20 12
## 若该进度已解锁，放置1号石英块线（终点进度）
execute if score advancement.celebration record matches 0..1 run setblock -106 20 11 wstd:quartz_block_with_line_1

# --- 杂项 | 是谁？ ---

## 未获取该进度时 | 复制展示框与0号石英块线
execute if score advancement.who record matches 0 if score advancement.letMeSee record matches 1 run clone -106 16 12 -106 16 12 -105 21 12
execute if score advancement.who record matches 0 if score advancement.letMeSee record matches 1 run setblock -105 21 11 wstd:quartz_block_with_line_0
## 已获取该进度时 | 复制展示框与4号石英块线
execute if score advancement.who record matches 1 run clone -106 13 12 -106 13 12 -105 21 12
execute if score advancement.who record matches 1 run setblock -105 21 11 wstd:quartz_block_with_line_4

# --- 杂项 | DIY ---

## 未获取该进度时 | 复制展示框与3号石英块线
execute if score advancement.diy record matches 0 if score advancement.who record matches 1 run clone -105 16 12 -105 16 12 -105 22 12
execute if score advancement.diy record matches 0 if score advancement.who record matches 1 run setblock -105 22 11 wstd:quartz_block_with_line_3
## 已获取该进度时 | 复制展示框与8号石英块线
execute if score advancement.diy record matches 1 run clone -105 13 12 -105 13 12 -105 22 12
execute if score advancement.diy record matches 1 run setblock -105 22 11 wstd:quartz_block_with_line_8

# --- 杂项 | 欣赏，观望 ---

## 未获取该进度时 | 复制展示框
execute if score advancement.appreciateAndWatch record matches 0 if score advancement.diy record matches 1 run clone -104 16 12 -104 16 12 -105 23 12
## 已获取该进度时 | 复制展示框
execute if score advancement.appreciateAndWatch record matches 1 run clone -104 13 12 -104 13 12 -105 23 12
## 若该进度已解锁，放置3号石英块线（终点进度）
execute if score advancement.appreciateAndWatch record matches 0..1 run setblock -105 23 11 wstd:quartz_block_with_line_3

# 加载展示框

# ===== 锁定状态 | 若上游进度未解锁，则显示为锁定 =====
## 主线 - 小试牛刀
execute @e[name=advGetStarted,scores={stats=0}] ~~~ clone -103 11 19 -103 11 19 -100 20 19
## 主线 - 半程旅途
execute @e[name=advMoreSkilled,scores={stats=0}] ~~~ clone -103 11 19 -103 11 19 -101 20 19
## 主线 - 结束了！...吗？
execute @e[name=advHalfWay,scores={stats=0}] ~~~ clone -103 11 19 -103 11 19 -102 20 19
## 主线 - 另辟蹊径
execute @e[name=advMoreSkilled,scores={stats=0}] ~~~ clone -103 11 19 -103 11 19 -100 21 19
## 主线 - 为什么要这么摆放铁啊？
execute @e[name=advAnotherWay,scores={stats=0}] ~~~ clone -103 11 19 -103 11 19 -100 22 19
## 主线 - 满地的白色生物
execute @e[name=advHalfWay,scores={stats=0}] ~~~ clone -103 11 19 -103 11 19 -101 18 19
## 主线 - BUG！
execute @e[name=advWhiteMobsAnywhere,scores={stats=0}] ~~~ clone -103 11 19 -103 11 19 -100 18 19
## 主线 - 幸运儿
execute @e[name=advWhiteMobsAnywhere,scores={stats=0}] ~~~ clone -103 11 19 -103 11 19 -102 18 19
## 主线 - 箱下箱
execute @e[name=advTheEnd,scores={stats=0}] ~~~ clone -103 11 19 -103 11 19 -102 21 19
## 大师 - 按钮！
execute @e[name=advHalfWay,scores={stats=0}] ~~~ clone -104 11 19 -104 11 19 -106 22 19
## 大师 - 酿造家
execute @e[name=advHalfWay,scores={stats=0}] ~~~ clone -104 11 19 -104 11 19 -106 21 19
## 大师 - 生存家
execute @e[name=advHalfWay,scores={stats=0}] ~~~ clone -104 11 19 -104 11 19 -106 20 19
## 大师 - 红石家
execute @e[name=advMoreSkilled,scores={stats=0}] ~~~ clone -105 11 19 -105 11 19 -106 19 19
## 大师 - 神速
execute @e[name=advEasterEggFound,scores={stats=0}] ~~~ clone -106 11 19 -106 11 19 -106 18 19
## 大师 - 又双叒叕是按钮
execute @e[name=advButton,scores={stats=0}] ~~~ clone -103 11 19 -103 11 19 -107 22 19
## 大师 - 不是吧，还有？
execute @e[name=advButtonAgain,scores={stats=0}] ~~~ clone -103 11 19 -103 11 19 -107 20 19
## 大师 - 绿宝石！
execute @e[name=advSurviveMaster,scores={stats=0}] ~~~ clone -103 11 19 -103 11 19 -107 18 19
## 大师 - 这也能速通？
execute @e[name=advSoFast,scores={stats=0}] ~~~ clone -103 11 19 -103 11 19 -108 22 19
## 彩蛋 - 我还以为是跑酷
execute @e[name=advEasterEggFound,scores={stats=0}] ~~~ clone -103 11 11 -103 11 11 -100 21 11
## 彩蛋 - 好耶！
execute @e[name=advEasterEggFound,scores={stats=0}] ~~~ clone -103 11 11 -103 11 11 -99 20 11
## 彩蛋 - 超级好评
execute @e[name=advEasterEggFound,scores={stats=0}] ~~~ clone -103 11 11 -103 11 11 -100 19 11
## 彩蛋 - 钢铁侠
execute @e[name=advSuperLike,scores={stats=0}] ~~~ clone -103 11 11 -103 11 11 -100 18 11
## 杂项 - 庆典
execute @e[name=advLetMeSee,scores={stats=0}] ~~~ clone -103 11 11 -103 11 11 -107 19 11
## 杂项 - 是谁？
execute @e[name=advLetMeSee,scores={stats=0}] ~~~ clone -103 11 11 -103 11 11 -106 20 11
## 杂项 - DIY？！
execute @e[name=advWho,scores={stats=0}] ~~~ clone -103 11 11 -103 11 11 -106 21 11
## 杂项 - 欣赏，观望
execute @e[name=advDiy,scores={stats=0}] ~~~ clone -103 11 11 -103 11 11 -106 22 11

# ===== 开放状态 | 上游进度已解锁，但本进度未解锁 =====
## 主线 - 初来乍到
execute @e[name=advGetStarted,scores={stats=0}] ~~~ clone -99 14 19 -99 14 19 -99 20 19
## 主线 - 小试牛刀
execute @e[name=advMoreSkilled,scores={stats=0}] ~~~ execute @e[name=advGetStarted,scores={stats=1}] ~~~ clone -100 14 19 -100 14 19 -100 20 19
## 主线 - 半程旅途
execute @e[name=advHalfWay,scores={stats=0}] ~~~ execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ clone -101 14 19 -101 14 19 -101 20 19
## 主线 - 结束了！...吗？
execute @e[name=advTheEnd,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ clone -102 14 19 -102 14 19 -102 20 19
## 主线 - 另辟蹊径
execute @e[name=advAnotherWay,scores={stats=0}] ~~~ execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ clone -100 15 19 -100 15 19 -100 21 19
## 主线 - 为什么要这么摆放铁啊？
execute @e[name=advWhyPlaceIronLikeThis,scores={stats=0}] ~~~ execute @e[name=advAnotherWay,scores={stats=1}] ~~~ clone -100 16 19 -100 16 19 -100 22 19
## 主线 - 满地的白色生物
execute @e[name=advWhiteMobsAnywhere,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ clone -101 12 19 -101 12 19 -101 18 19
## 主线 - BUG！
execute @e[name=advBug,scores={stats=0}] ~~~ execute @e[name=advWhiteMobsAnywhere,scores={stats=1}] ~~~ clone -100 12 19 -100 12 19 -100 18 19
## 主线 - 幸运儿
execute @e[name=advLuckyDog,scores={stats=0}] ~~~ execute @e[name=advWhiteMobsAnywhere,scores={stats=1}] ~~~ clone -102 12 19 -102 12 19 -102 18 19
## 主线 - 禁止套娃
execute @e[name=advNoDolls,scores={stats=0}] ~~~ execute @e[name=advTheEnd,scores={stats=1}] ~~~ clone -102 15 19 -102 15 19 -102 21 19
## 大师 - 酿造家
execute @e[name=advBrewingMaster,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ clone -106 15 19 -106 15 19 -106 21 19
## 大师 - 红石家
execute @e[name=advRedstoneMaster,scores={stats=0}] ~~~ execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ clone -106 13 19 -106 13 19 -106 19 19
## 大师 - 生存家
execute @e[name=advSurviveMaster,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ clone -106 14 19 -106 14 19 -106 20 19
## 大师 - 绿宝石
execute @e[name=advEmerald,scores={stats=0}] ~~~ execute @e[name=advSurviveMaster,scores={stats=1}] ~~~ clone -107 14 19 -107 14 19 -107 20 19
## 大师 - 按钮
execute @e[name=advButton,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ clone -106 16 19 -106 16 19 -106 22 19
## 大师 - 又双叒叕是按钮
execute @e[name=advButtonAgain,scores={stats=0}] ~~~ execute @e[name=advButton,scores={stats=1}] ~~~ clone -107 16 19 -107 16 19 -107 22 19
## 大师 - 不是吧？还有？
execute @e[name=advNoMoreButton,scores={stats=0}] ~~~ execute @e[name=advButtonAgain,scores={stats=1}] ~~~ clone -108 16 19 -108 16 19 -108 22 19
## 大师 - 神速
execute @e[name=advSoFast,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ clone -106 12 19 -106 12 19 -106 18 19
## 大师 - 这也能速通？
execute @e[name=advHowCanYouSpeedrun,scores={stats=0}] ~~~ execute @e[name=advSoFast,scores={stats=1}] ~~~ clone -107 12 19 -107 12 19 -107 18 19
## 大师 - 结束了！
execute @e[name=advTheRealEnd,scores={stats=0}] ~~~ clone -109 14 19 -109 14 19 -109 20 19
## 彩蛋 - 藏得够深的！
execute @e[name=advEasterEggFound,scores={stats=0}] ~~~ clone -100 14 11 -100 14 11 -100 20 11
## 彩蛋 - 好耶！
execute @e[name=advYes,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ clone -99 14 11 -99 14 11 -99 20 11
## 彩蛋 - 我还以为是跑酷
execute @e[name=advNotAParkour,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ clone -100 15 11 -100 15 11 -100 21 11
## 彩蛋 - 超级好评
execute @e[name=advSuperLike,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ clone -100 13 11 -100 13 11 -100 19 11
## 彩蛋 - 钢铁侠
execute @e[name=advIronman,scores={stats=0}] ~~~ execute @e[name=advSuperLike,scores={stats=1}] ~~~ clone -100 12 11 -100 12 11 -100 18 11
## 杂项 - 让我康康
execute @e[name=advLetMeSee,scores={stats=0}] ~~~ clone -107 14 11 -107 14 11 -107 20 11
## 杂项 - 庆典
execute @e[name=advCelebration,scores={stats=0}] ~~~ execute @e[name=advLetMeSee,scores={stats=1}] ~~~ clone -107 13 11 -107 13 11 -107 19 11
## 杂项 - 是谁？
execute @e[name=advWho,scores={stats=0}] ~~~ execute @e[name=advLetMeSee,scores={stats=1}] ~~~ clone -106 14 11 -106 14 11 -106 20 11
## 杂项 - DIY
execute @e[name=advDiy,scores={stats=0}] ~~~ execute @e[name=advWho,scores={stats=1}] ~~~ clone -106 15 11 -106 15 11 -106 21 11
## 杂项 - 欣赏，观望
execute @e[name=advAppreciateAndWatch,scores={stats=0}] ~~~ execute @e[name=advDiy,scores={stats=1}] ~~~ clone -106 16 11 -106 16 11 -106 22 11

# ===== 解锁状态 | 本进度已解锁 =====
## 主线 - 初来乍到
execute @e[name=advGetStarted,scores={stats=1}] ~~~ clone -99 8 19 -99 8 19 -99 20 19
## 主线 - 小试牛刀
execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ clone -100 8 19 -100 8 19 -100 20 19
## 主线 - 半程旅途
execute @e[name=advHalfWay,scores={stats=1}] ~~~ clone -101 8 19 -101 8 19 -101 20 19
## 主线 - 结束了！...吗？
execute @e[name=advTheEnd,scores={stats=1}] ~~~ clone -102 8 19 -102 8 19 -102 20 19
## 主线 - 另辟蹊径
execute @e[name=advAnotherWay,scores={stats=1}] ~~~ clone -100 9 19 -100 9 19 -100 21 19
## 主线 - 为什么要这么摆放铁啊？
execute @e[name=advWhyPlaceIronLikeThis,scores={stats=1}] ~~~ clone -100 10 19 -100 10 19 -100 22 19
## 主线 - 满地的白色生物
execute @e[name=advWhiteMobsAnywhere,scores={stats=1}] ~~~ clone -101 7 19 -101 7 19 -101 19 19
execute @e[name=advWhiteMobsAnywhere,scores={stats=1}] ~~~ clone -101 6 19 -101 6 19 -101 18 19
## 主线 - BUG！
execute @e[name=advBug,scores={stats=1}] ~~~ clone -100 6 19 -100 6 19 -100 18 19
## 主线 - 幸运儿
execute @e[name=advLuckyDog,scores={stats=1}] ~~~ clone -102 6 19 -102 6 19 -102 18 19
## 主线 - 禁止套娃
execute @e[name=advNoDolls,scores={stats=1}] ~~~ clone -102 9 19 -102 9 19 -102 21 19
## 大师 - 酿造家
execute @e[name=advBrewingMaster,scores={stats=1}] ~~~ clone -106 9 19 -106 9 19 -106 21 19
## 大师 - 红石家
execute @e[name=advRedstoneMaster,scores={stats=1}] ~~~ clone -106 7 19 -106 7 19 -106 19 19
## 大师 - 生存家
execute @e[name=advSurviveMaster,scores={stats=1}] ~~~ clone -106 8 19 -106 8 19 -106 20 19
## 大师 - 绿宝石
execute @e[name=advEmerald,scores={stats=1}] ~~~ clone -107 8 19 -107 8 19 -107 20 19
## 大师 - 按钮
execute @e[name=advButton,scores={stats=1}] ~~~ clone -106 10 19 -106 10 19 -106 22 19
## 大师 - 又双叒叕是按钮
execute @e[name=advButtonAgain,scores={stats=1}] ~~~ clone -107 10 19 -107 10 19 -107 22 19
## 大师 - 不是吧？还有？
execute @e[name=advNoMoreButton,scores={stats=1}] ~~~ clone -108 10 19 -108 10 19 -108 22 19
## 大师 - 神速
execute @e[name=advSoFast,scores={stats=1}] ~~~ clone -106 6 19 -106 6 19 -106 18 19
## 大师 - 这也能速通？
execute @e[name=advHowCanYouSpeedrun,scores={stats=1}] ~~~ clone -107 6 19 -107 6 19 -107 18 19
## 大师 - 结束了！
execute @e[name=advTheRealEnd,scores={stats=1}] ~~~ clone -109 8 19 -109 8 19 -109 20 19
## 彩蛋 - 藏得够深的！
execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ clone -100 8 11 -100 8 11 -100 20 11
## 彩蛋 - 好耶！
execute @e[name=advYes,scores={stats=1}] ~~~ clone -99 8 11 -99 8 11 -99 20 11
## 彩蛋 - 我还以为是跑酷
execute @e[name=advNotAParkour,scores={stats=1}] ~~~ clone -100 9 11 -100 9 11 -100 21 11
## 彩蛋 - 超级好评
execute @e[name=advSuperLike,scores={stats=1}] ~~~ clone -100 7 11 -100 7 11 -100 19 11
## 彩蛋 - 钢铁侠
execute @e[name=advIronman,scores={stats=1}] ~~~ clone -100 6 11 -100 6 11 -100 18 11
## 杂项 - 让我康康
execute @e[name=advLetMeSee,scores={stats=1}] ~~~ clone -107 8 11 -107 8 11 -107 20 11
## 杂项 - 庆典
execute @e[name=advCelebration,scores={stats=1}] ~~~ clone -107 7 11 -107 7 11 -107 19 11
## 杂项 - 是谁？
execute @e[name=advWho,scores={stats=1}] ~~~ clone -106 8 11 -106 8 11 -106 20 11
## 杂项 - DIY
execute @e[name=advDiy,scores={stats=1}] ~~~ clone -106 9 11 -106 9 11 -106 21 11
## 杂项 - 欣赏，观望
execute @e[name=advAppreciateAndWatch,scores={stats=1}] ~~~ clone -106 10 11 -106 10 11 -106 22 11

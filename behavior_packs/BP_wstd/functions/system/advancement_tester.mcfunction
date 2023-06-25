# 进度检测器

## ===== 主线进度 =====
### 初来乍到 | 完成第1关 | 上游：无
execute @e[name=advGetStarted,scores={stats=0}] ~~~ execute @e[name=levelAdvancement,scores={stats=1..32}] ~~~ function advancements/mainline/get_started
### 小试牛刀 | 完成第5关 | 上游：初来乍到
execute @e[name=advMoreSkilled,scores={stats=0}] ~~~ execute @e[name=advGetStarted,scores={stats=1}] ~~~ execute @e[name=levelAdvancement,scores={stats=5..32}] ~~~ function advancements/mainline/more_skilled
### 半程旅途 | 完成第15关 | 上游：小试牛刀
execute @e[name=advHalfWay,scores={stats=0}] ~~~ execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ execute @e[name=levelAdvancement,scores={stats=15..30}] ~~~ function advancements/mainline/half_way
### 结束了！...吗？ | 完成第30关 | 上游：半程旅途
execute @e[name=advTheEnd,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=levelAdvancement,scores={stats=30}] ~~~ function advancements/mainline/the_end
### 另辟蹊径 | 在第7关不进入下界死亡 | 上游：小试牛刀
execute @e[name=advAnotherWay,scores={stats=0}] ~~~ execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ execute @e[name=levelCompleted,scores={backend=1}] ~~~ execute @e[name=diedInOverworld] ~~~ function advancements/mainline/another_way
### 为什么要这么摆放铁啊？ | 在第15关合成一个铁头盔 | 上游：另辟蹊径
execute @e[name=advWhyPlaceIronLikeThis,scores={stats=0}] ~~~ execute @e[name=advAnotherWay,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=15}] ~~~ execute @a[hasitem={item=iron_helmet},c=1] ~~~ function advancements/mainline/why_place_iron_like_this
### 满地的白色生物 | 在第17关放下所有的骷髅 | 上游：半程旅途
###（这是新语法，一条命令，多么完美，旧语法...哎 ->） execute if score @e[name=advWhiteMobsAnywhere] stats matches 0 if score @e[name=advHalfWay] stats matches 0 if score @e[name=level] backend matches 17 unless entity @e[type=item] unless entity @a[hasitem={item=skeleton_spawn_egg}] if blocks 10 5 7 10 5 7 -1 22 85 all run function advancements/mainline/white_mobs_anywhere
execute @e[name=advWhiteMobsAnywhere,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=17}] ~~~ execute @e[name=itemTester1,scores={active=1}] ~~~ execute @e[name=itemTester2,scores={active=1}] ~~~ execute @e[name=itemTester3,scores={active=1}] ~~~ execute @e[type=skeleton,c=1] ~~~ function advancements/mainline/white_mobs_anywhere
### BUG！ | 在第18关卡进虚空 | 上游：满地的白色生物
execute @e[name=advBug,scores={stats=0}] ~~~ execute @e[name=advWhiteMobsAnywhere,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=18}] ~~~ execute @e[name=counter,scores={backend=1}] ~~~ function advancements/mainline/bug
### 幸运儿 | 钓到弓 | 上游：满地的白色生物
execute @e[name=advLuckyDog,scores={stats=0}] ~~~ execute @e[name=advWhiteMobsAnywhere,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=24}] ~~~ execute @a[hasitem={item=bow}] ~~~ function advancements/mainline/lucky_dog
### 禁止套娃 | 打开箱子下的木桶 | 上游：结束了！...吗？
execute @e[name=advNoDolls,scores={stats=0}] ~~~ execute @e[name=advTheEnd,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=30}] ~~~ detect -129 64 74 barrel 8 function advancements/mainline/no_dolls

## ===== 彩蛋进度 =====
### 藏得够深的！ | 发现彩蛋 | 上游：无
execute @e[name=advEasterEggFound,scores={stats=0}] ~~~ execute @e[name=easterEggAdvancement,scores={stats=40..50}] ~~~ function advancements/easter_egg/easter_egg_found
### 好耶！ | 完成10个彩蛋关卡 | 上游：藏得够深的！
execute @e[name=advYes,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ execute @e[name=easterEggAdvancement,scores={stats=50}] ~~~ function advancements/easter_egg/yes
### 我还以为是跑酷 | 完成彩蛋3的跑酷 | 上游：藏得够深的！
execute @e[name=advNotAParkour,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=43}] ~~~ execute @e[name=counter,scores={backend=1}] ~~~ function advancements/easter_egg/not_a_parkour
### 超级好评 | 彩蛋4选择7次好评 | 上游：藏得够深的！
execute @e[name=advSuperLike,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=44}] ~~~ execute @e[name=counter,scores={backend=7..}] ~~~ function advancements/easter_egg/super_like
### 钢铁侠 | 彩蛋5制作出一套铁套 | 上游：超级好评
execute @e[name=advIronman,scores={stats=0}] ~~~ execute @e[name=advSuperLike,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=45}] ~~~ execute @a[c=1,hasitem=[{item=iron_helmet,location=slot.armor.head},{item=iron_chestplate,location=slot.armor.chest},{item=iron_leggings,location=slot.armor.legs},{item=iron_boots,location=slot.armor.feet}]] ~~~ function advancements/easter_egg/ironman

## ===== 大师进度 =====
### 酿造家 | 不跳过完成第20关 | 上游：半程旅途
execute @e[name=advBrewingMaster,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=20}] ~~~ execute @e[name=levelCompleted,scores={backend=1}] ~~~ execute @e[name=skipUsed,scores={backend=0}] ~~~ function advancements/master/brewing_master
### 红石家 | 第13（3）关不使用侦测器通关 | 上游：小试牛刀
execute @e[name=advRedstoneMaster,scores={stats=0}] ~~~ execute @e[name=advMoreSkilled,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=32}] ~~~ execute @e[name=levelCompleted,scores={backend=1}] ~~~ execute @e[name=counter,scores={backend=0..9}] ~~~ execute @e[name=skipUsed,scores={backend=0}] ~~~ function advancements/master/redstone_master
### 生存家 | 不跳过完成第30关 | 上游：半程旅途
execute @e[name=advSurviveMaster,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=30}] ~~~ execute @e[name=levelCompleted,scores={backend=1}] ~~~ execute @e[name=skipUsed,scores={backend=0}] ~~~ function advancements/master/survive_master
### 绿宝石 | 发现第30关的绿宝石 | 上游：生存家
execute @e[name=advEmerald,scores={stats=0}] ~~~ execute @e[name=advSurviveMaster,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=30}] ~~~ execute @a[c=1,hasitem={item=emerald}] ~~~ function advancements/master/emerald
### 按钮 | 发现第20关的按钮 | 上游：半程旅途
execute @e[name=advButton,scores={stats=0}] ~~~ execute @e[name=advHalfWay,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=20}] ~~~ detect -80 26 89 stone_button 13 function advancements/master/button
### 又双叒叕是按钮 | 发现末地的按钮 | 上游：按钮
execute @e[name=advButtonAgain,scores={stats=0}] ~~~ execute @e[name=advButton,scores={stats=1}] ~~~ execute @a[c=1,scores={dimension=2}] ~~~ execute @s ~~~ detect 37 58 -2 stone_button 11 execute @e[name=overworld] ~~~ function advancements/master/button_again
### 不是吧？还有？ | 发现结束屋的按钮 | 上游：又双叒叕是按钮
execute @e[name=advNoMoreButton,scores={stats=0}] ~~~ execute @e[name=advButtonAgain,scores={stats=1}] ~~~ detect -46 11 35 stone_button 10 function advancements/master/no_more_button
### 神速 | 60秒通关彩蛋8 | 上游：藏得够深的！
execute @e[name=advSoFast,scores={stats=0}] ~~~ execute @e[name=advEasterEggFound,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=48}] ~~~ execute @e[name=levelCompleted,scores={backend=1}] ~~~ execute @e[name=remainingTime,scores={time=121..180}] ~~~ function advancements/master/so_fast
### 这也能速通？ | 通关限时关卡 | 上游：神速
execute @e[name=advHowCanYouSpeedrun,scores={stats=0}] ~~~ execute @e[name=advSoFast,scores={stats=1}] ~~~ execute @e[name=timeLimitedAdvancement,scores={stats=40}] ~~~ function advancements/master/how_can_you_speedrun
### 结束了！ | 获取所有29个进度 | 上游：无
execute @e[name=advTheRealEnd,scores={stats=0}] ~~~ execute @e[name=advancement,scores={stats=29}] ~~~ function advancements/master/the_real_end

## ===== 杂项进度 =====
### 让我康康 | 进入进度中心 | 上游：无
execute @e[name=advLetMeSee,scores={stats=0}] ~~~ execute @e[name=level,scores={backend=-12}] ~~~ function advancements/miscellaneous/let_me_see
### 庆典 | 进入烟花教程 | 上游：让我康康
execute @e[name=advCelebration,scores={stats=0}] ~~~ execute @e[name=advLetMeSee,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=-14}] ~~~ function advancements/miscellaneous/celebration
### 是谁？ | 查看制作人 | 上游：让我康康
execute @e[name=advWho,scores={stats=0}] ~~~ execute @e[name=advLetMeSee,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=-9}] ~~~ execute @a[x=-102,y=19,z=43.5,r=1.2,c=1] ~~~ function advancements/miscellaneous/who
### DIY | 进入进度中心 | 上游：是谁？
execute @e[name=advDiy,scores={stats=0}] ~~~ execute @e[name=advWho,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=-1}] ~~~ function advancements/miscellaneous/diy
### 欣赏，观望 | 旁观地图 | 上游：DIY
execute @e[name=advAppreciateAndWatch,scores={stats=0}] ~~~ execute @e[name=advDiy,scores={stats=1}] ~~~ execute @e[name=level,scores={backend=-8}] ~~~ function advancements/miscellaneous/appreciate_and_watch
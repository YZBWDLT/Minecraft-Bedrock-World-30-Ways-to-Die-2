# ===== 进度控制器 =====
# 该控制器将按照不同的情况执行不同的时间线效果。

# --- 主线进度 ---

## 初来乍到 | 完成第1关 | 上游：无
##      ↓ 当前进度未完成                                  ↓ 当前进度所需的条件                          ↓ 条件均符合后，执行
execute if score advancement.getStarted record matches 0 if score progress.level record matches 1..32 run function advancements/mainline/get_started

## 小试牛刀 | 完成第5关 | 上游：初来乍到
##      ↓ 当前进度未完成                                   ↓ 前置进度已完成                                  ↓ 当前进度所需的条件                          ↓ 条件均符合后，执行
execute if score advancement.moreSkilled record matches 0 if score advancement.getStarted record matches 1 if score progress.level record matches 5..32 run function advancements/mainline/more_skilled

## 半程旅途 | 完成第15关 | 上游：小试牛刀
execute if score advancement.halfWay record matches 0 if score advancement.moreSkilled record matches 1 if score progress.level record matches 15..30 run function advancements/mainline/half_way

## 结束了！...吗？ | 完成第30关 | 上游：半程旅途
execute if score advancement.theEnd record matches 0 if score advancement.halfWay record matches 1 if score progress.mapStage record matches 1.. run function advancements/mainline/the_end

## 另辟蹊径 | 在第7关不进入下界死亡 | 上游：小试牛刀
##                                                                                                         ↓ 检测关卡完成后是否未曾进过下界
execute if score advancement.anotherWay record matches 0 if score advancement.moreSkilled record matches 1 if score level data matches 7 if score levelCompleted data matches 1 if score level7.enteredNether data matches 0 run function advancements/mainline/another_way

## 为什么要这么摆放铁啊？ | 在第15关合成一个铁头盔 | 上游：另辟蹊径
execute if score advancement.whyPlaceIronLikeThis record matches 0 if score advancement.anotherWay record matches 1 if score level data matches 15 if entity @a[hasitem={item=iron_helmet}] run function advancements/mainline/why_place_iron_like_this

## 满地的白色生物 | 在第17关放下所有的骷髅 | 上游：半程旅途
## （啊哈哈哈哈哈哈！！！终于可以用新语法了！！！你知道我等这天等多久了吗？！！）                                  ↓ 检测：为第17关、无掉落物、玩家无刷怪蛋、确实有骷髅生成、箱子是空的
execute if score advancement.whiteMobsAnywhere record matches 0 if score advancement.halfWay record matches 1 if score level data matches 17 unless entity @e[type=item] unless entity @a[hasitem={item=skeleton_spawn_egg}] if entity @e[type=skeleton] if blocks 10 5 7 10 5 7 -1 22 85 all run function advancements/mainline/white_mobs_anywhere

## BUG！ | 在第18关卡进虚空 | 上游：满地的白色生物
execute if score advancement.bug record matches 0 if score advancement.whiteMobsAnywhere record matches 1 if score level data matches 18 if score level18.playerFellIntoVoid data matches 1 run function advancements/mainline/bug

## 幸运儿 | 钓到弓 | 上游：满地的白色生物
execute if score advancement.luckyGuy record matches 0 if score advancement.whiteMobsAnywhere record matches 1 if score level data matches 24 if entity @a[hasitem={item=bow}] run function advancements/mainline/lucky_guy

## 禁止套娃 | 打开箱子下的木桶 | 上游：结束了！...吗？
execute if score advancement.noDolls record matches 0 if score advancement.theEnd record matches 1 if score level data matches 30 if block -129 64 74 barrel ["facing_direction"=0,"open_bit"=true] run function advancements/mainline/no_dolls


# --- 彩蛋进度 ---
## 藏得够深的！ | 发现彩蛋 | 上游：无
execute if score advancement.easterEggFound record matches 0 if score progress.easterEgg record matches 0..10 run function advancements/easter_egg/easter_egg_found

## 好耶！ | 完成10个彩蛋关卡 | 上游：藏得够深的！
execute if score advancement.yes record matches 0 if score advancement.easterEggFound record matches 1 if score progress.easterEgg record matches 10 run function advancements/easter_egg/yes

## 我还以为是跑酷 | 完成彩蛋3的跑酷 | 上游：藏得够深的！
execute if score advancement.notAParkour record matches 0 if score advancement.easterEggFound record matches 1 if score level data matches 43 if score easterEgg3.finishedParkour data matches 1 run function advancements/easter_egg/not_a_parkour

## 超级好评 | 彩蛋4选择7次好评 | 上游：藏得够深的！
execute if score advancement.superLike record matches 0 if score advancement.easterEggFound record matches 1 if score level data matches 44 if score easterEgg4.likedTimes data matches 7.. run function advancements/easter_egg/super_like

## 钢铁侠 | 彩蛋5制作出一套铁套 | 上游：超级好评
execute if score advancement.ironman record matches 0 if score advancement.superLike record matches 1 if score level data matches 45 if entity @a[hasitem=[{item=iron_helmet,location=slot.armor.head},{item=iron_chestplate,location=slot.armor.chest},{item=iron_leggings,location=slot.armor.legs},{item=iron_boots,location=slot.armor.feet}]] run function advancements/easter_egg/ironman


# --- 大师进度 ---

## 酿造家 | 不跳过完成第20关 | 上游：半程旅途
execute if score advancement.brewingMaster record matches 0 if score advancement.halfWay record matches 1 if score level data matches 20 if score levelCompleted data matches 1 if score skipUsed data matches 0 run function advancements/master/brewing_master

## 红石家 | 第13（3）关不使用侦测器通关 | 上游：小试牛刀
execute if score advancement.redstoneMaster record matches 0 if score advancement.moreSkilled record matches 1 if score level data matches 32 if score levelCompleted data matches 1 unless score level13.redstoneActivatedTimes data matches 10.. if score skipUsed data matches 0 run function advancements/master/redstone_master

## 生存家 | 不跳过完成第30关 | 上游：半程旅途
execute if score advancement.surviveMaster record matches 0 if score advancement.halfWay record matches 1 if score level data matches 30 if score levelCompleted data matches 1 if score skipUsed data matches 0 run function advancements/master/survive_master

## 绿宝石 | 发现第30关的绿宝石 | 上游：生存家
execute if score advancement.emerald record matches 0 if score advancement.surviveMaster record matches 1 if score level data matches 30 if entity @a[hasitem={item=emerald}] run function advancements/master/emerald

## 按钮 | 发现第20关的按钮 | 上游：半程旅途
execute if score advancement.button record matches 0 if score advancement.halfWay record matches 1 if score level data matches 20 if block -80 26 89 stone_button ["facing_direction"=5,"button_pressed_bit"=true] run function advancements/master/button

## 又双叒叕是按钮 | 发现末地的按钮 | 上游：按钮
execute if score advancement.buttonAgain record matches 0 if score advancement.button record matches 1 in the_end if block 37 58 -2 stone_button ["facing_direction"=3,"button_pressed_bit"=true] run function advancements/master/button_again

## 不是吧？还有？ | 发现结束屋的按钮 | 上游：又双叒叕是按钮
execute if score advancement.noMoreButton record matches 0 if score advancement.buttonAgain record matches 1 if block -46 11 35 stone_button ["facing_direction"=2,"button_pressed_bit"=true] run function advancements/master/no_more_button

## 神速 | 60秒通关彩蛋8 | 上游：藏得够深的！
execute if score advancement.soFast record matches 0 if score advancement.easterEggFound record matches 1 if score level data matches 48 if score levelCompleted data matches 1 if score remainingTime time matches 121..180 run function advancements/master/so_fast

## 这也能速通？ | 通关限时关卡 | 上游：神速
execute if score advancement.howCanYouSpeedrun record matches 0 if score advancement.soFast record matches 1 if score progress.timeLimited record matches 5 run function advancements/master/how_can_you_speedrun

## 结束了！ | 获取所有29个进度 | 上游：无
execute if score advancement.theRealEnd record matches 0 if score progress.advancement record matches 29 run function advancements/master/the_real_end

# --- 杂项进度 ---

## 让我康康 | 进入进度中心 | 上游：无
execute if score advancement.letMeSee record matches 0 if score level data matches -12 run function advancements/miscellaneous/let_me_see

## 庆典 | 进入烟花教程 | 上游：让我康康
execute if score advancement.celebration record matches 0 if score advancement.letMeSee record matches 1 if score level data matches -14 run function advancements/miscellaneous/celebration

## 是谁？ | 查看制作人 | 上游：让我康康
execute if score advancement.who record matches 0 if score advancement.letMeSee record matches 1 if score level data matches -9 if score settingCenter.creditsViewed data matches 1 run function advancements/miscellaneous/who

## DIY | 进入自定义关卡大厅 | 上游：是谁？
execute if score advancement.diy record matches 0 if score advancement.who record matches 1 if score level data matches -1 run function advancements/miscellaneous/diy

## 欣赏，观望 | 旁观地图 | 上游：DIY
execute if score advancement.appreciateAndWatch record matches 0 if score advancement.diy record matches 1 if score level data matches -8 run function advancements/miscellaneous/appreciate_and_watch

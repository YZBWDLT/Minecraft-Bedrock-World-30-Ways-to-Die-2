# 展示文本
kill @e[type=wstd:text_display]
# 重置步骤
scoreboard players set @e[name=counter,scores={backend=9..}] backend 1
scoreboard players set @e[name=counter,scores={backend=..0}] backend 8
# 音效
scoreboard players set @e[name=soundPlayer] active 11

## ===== 自定义关卡向导 =====
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=1}] ~~~ summon wstd:text_display "§b§l欢迎来到自定义关卡！" -109.9 5.5 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=1}] ~~~ summon wstd:text_display "§b这是一个自定义关卡的向导！" -109.9 4.9 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=1}] ~~~ summon wstd:text_display "§b本向导将引导你逐渐学会制作属于你自己的关卡~" -109.9 4.6 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=1}] ~~~ summon wstd:text_display "§a使用§e下一步§a以查看下面的步骤" -109.9 4.3 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=1}] ~~~ summon wstd:text_display "§a使用§e返回§a以查看前面的步骤" -109.9 4.0 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=1}] ~~~ summon wstd:text_display "§a使用§e退出关卡§a以返回到大厅" -109.9 3.7 -16

execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§b§l活动范围限制" -109.9 5.5 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§b相信你已经看到那些§e\"红色的围墙\"§b了吧！" -109.9 4.9 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§b那些是§e边界方块§b，它会§e阻止非创造模式的玩家从其上方或下方越过§b！" -109.9 4.6 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§b不过为了限制创造模式的你到处乱跑，本地图也设置了一些限制..." -109.9 4.3 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§b就是在§e边界方块之内的这一大片区域§b！" -109.9 4.0 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§b此外还有，§e高度上也设置了限制§b，会有隐形方块（屏障）阻挡你" -109.9 3.7 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§b这就是你的活动范围（32*32*32）了，切记不要离开哦，会把你§e自动传送回来§b的！" -109.9 3.4 -16

execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=3}] ~~~ summon wstd:text_display "§b§l创立一个新的空房间" -109.9 5.5 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=3}] ~~~ summon wstd:text_display "§b准备活动就绪后我们就该§e创建房间§b了！" -109.9 4.9 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=3}] ~~~ summon wstd:text_display "§b使用§e\"更改房间大小\"§b物品§e可以清空你当前的房间并且应用新的房间大小§b！" -109.9 4.6 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=3}] ~~~ summon wstd:text_display "§b我们为你预设了§e3档房间大小§b，视你的需要选择合适的大小哦~" -109.9 4.3 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=3}] ~~~ summon wstd:text_display "§b如果你对这些房间都不满意，§e可以在我们限定的范围内自行建立房间§b！" -109.9 4.0 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=3}] ~~~ summon wstd:text_display "§b可能自己建立房间会累一些，不过有时候也是值得的~awa" -109.9 3.7 -16

execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§b§l布置场景" -109.9 5.5 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§b也许你已经想好了许多激动人心的玩法了，又或者可能也在踌躇不前？" -109.9 4.9 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§b那我们来试着做一个虚空死法的关卡吧~很简单，只需要在地板开一个洞就好了！" -109.9 4.6 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§b在§e进入游戏模式后，所有关卡限制高度的屏障都会消失，成为真正的虚空§b~" -109.9 4.3 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§b布置场景是足够自由的，但有些事情你§e可能必须注意§b：" -109.9 4.0 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§c* 船和末影珍珠是不被允许的！它们可能会导致玩家卡bug，因此只在特定关卡开放" -109.9 3.7 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§c* 游戏模式下玩家将被锁定冒险模式，你可能需要允许方块以令玩家能够放置方块" -109.9 3.4 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§c* 请不要做跨维度关卡！可能会引发一些奇怪的意外问题..." -109.9 3.1 -16

execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§b§l保存更改" -109.9 5.5 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§b当一切准备就绪之后，我们就可以把你的杰作保存下来啦！" -109.9 4.9 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§b使用§e\"保存关卡\"§b物品§e可以将你创造的关卡保存下来§b！" -109.9 4.6 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§b每一次当你进入这个关卡时，都会加载上一次你保存的关卡哦~" -109.9 4.3 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§b所以不用担心重做之类的事情啦~ヽ(✿ﾟ▽ﾟ)ノ" -109.9 4.0 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§b要想§e玩你自己的关卡§b，可以§e退出本关并切换为游戏模式§b！" -109.9 3.7 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§b在游戏模式下进入本关，就能§e以玩家身份进入本关游玩§b啦，很简单吧~" -109.9 3.4 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§a基础的操作就是这些啦！下面我们会带你从更高级的角度制作一个DIY关卡~" -109.9 3.1 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§c请注意，退出关卡不会保存你自定义的关卡！退出之前请务必保存！" -109.9 2.8 -16

execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§b§l使用限时关卡" -109.9 5.5 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§b你是否想让你的关卡也能成为所谓的\"限时关卡\"呢？ヾ(•ω•`)o" -109.9 4.9 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§b让我们来看一下你身后的§e命令系统§b..." -109.9 4.6 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§b想必你应该看到了一个命令方块叫做\"限时设定\"对吧？我们点开它，它的内置命令：" -109.9 4.3 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§bscoreboard players set @e[name=remainingTime] time §e-1§b" -109.9 4.0 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§b我们关注最后面的那个§e-1§b，它代表§e禁用限时关卡§b！设定任意一个负数都会禁用限时关卡(￣▽￣)" -109.9 3.7 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§b把这个-1换成§e任意一个正数§b，就会设定这关的限时为这么长的时间啦！单位是秒哦ヾ(^▽^*)))" -109.9 3.4 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§b启用限时关卡还会在§e进入关卡后自动播放限时关卡的音乐§b，是不是很贴心呢φ(゜▽゜*)♪" -109.9 3.1 -16

execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§b§l命令系统" -109.9 5.5 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§b我们也提供了对命令系统的支持！在你身后的这些命令方块就是这关的命令系统了..." -109.9 4.9 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§b很简洁，对吗？事实上很多繁琐且重复的步骤我们都已经为你简化啦~！" -109.9 4.6 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§b如果你懂命令，可以在这基础上进行修改~" -109.9 4.3 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§b你也可以在设置中心将权限等级调整到2，会有更多地图底层的东西供你使用~" -109.9 4.0 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§b如果你想不通怎么写，可以参考一下我们给出的预设关卡（自定义关卡 第6关~第10关）哦！" -109.9 3.7 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§c为了保证地图稳定，请务必确保你写的命令系统没有bug，不会影响到其他关卡！" -109.9 3.4 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§c退出关卡会自动清空这附近的区域，所以不要将命令方块写的过于分散~" -109.9 3.1 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§c同时还请不要移动预设命令方块的位置！" -109.9 2.8 -16

execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=8}] ~~~ summon wstd:text_display "§b§l自定义关卡向导结束" -109.9 5.5 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=8}] ~~~ summon wstd:text_display "§b现在你可以开始创作属于你自己的关卡了！" -109.9 4.9 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=8}] ~~~ summon wstd:text_display "§b你也可以将你的关卡分享给他人，哪怕是截图，让更多人参与进来能够使乐趣加倍哦！" -109.9 4.6 -16
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=8}] ~~~ summon wstd:text_display "§b祝你玩的开心~" -109.9 4.3 -16

## ===== 命令方块注释 =====
## 启动与重启命令组
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b启动与重" -103 1.9 -12
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b启命令组" -103 1.6 -12
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a所有关卡" -104 2.9 -12
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a通用函数" -104 2.6 -12
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a标题命令" -105 2.6 -12
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a传送玩家" -106 2.6 -12
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a限时设定" -107 2.6 -12

## 退出功能命令组
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b退出功能" -103 1.9 -13
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b命令组" -103 1.6 -13

## 提示命令组
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b提示" -103 1.9 -14
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b命令组" -103 1.6 -14
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a提示文本" -104 2.6 -14

## 攻略命令组
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b攻略" -103 1.9 -15
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b命令组" -103 1.6 -15
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a攻略文本" -104 2.6 -15

## 跳过命令组
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b跳过" -103 1.9 -16
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b命令组" -103 1.6 -16
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a跳过命令" -104 2.6 -16

## 关卡结束命令组
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b关卡结束" -103 1.9 -17
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b命令组" -103 1.6 -17
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a死亡消息" -104 2.6 -17

## 快捷栏标题命令组
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b快捷栏标" -103 1.9 -18
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b题命令组" -103 1.6 -18
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a快捷栏标题" -104 2.6 -18

## 标题命令
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a标题命令" -103 1.9 -20
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a标题时间" -104 2.6 -20
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a主标题" -105 2.6 -20
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a副标题" -106 2.6 -20


## ===== 自定义关卡向导 =====
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=1}] ~~~ summon wstd:text_display "§b§lWelcome to the DIY Levels!" -109.9 5.5 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=1}] ~~~ summon wstd:text_display "§bThis is a guide for the DIY Levels!" -109.9 4.9 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=1}] ~~~ summon wstd:text_display "§bThis guide will help you learn how to create your own levels~" -109.9 4.6 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=1}] ~~~ summon wstd:text_display "§aUse §eNext§a to see the next step" -109.9 4.3 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=1}] ~~~ summon wstd:text_display "§aUse §eBack§a to see the previous step" -109.9 4.0 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=1}] ~~~ summon wstd:text_display "§aUse §eQuit Level§a to return to the hall" -109.9 3.7 -16

execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§b§lActivity Range Limit" -109.9 5.8 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§bSurely you've noticed those §e\"red walls\"§b!" -109.9 5.2 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§bThose are §eBorders§b, they §eprevent non-creative mode" -109.9 4.9 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§eplayers from crossing over from above or below§b!" -109.9 4.6 -16

execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§bAlso, this map has restrictions on movement in creative mode..." -109.9 4.3 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§bThat's this large area §einside the borders§b!" -109.9 4.0 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§bAlso, there are §eheight restrictions§b, with barriers blocking you" -109.9 3.7 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§bThis is your activity range (32*32*32), remember not to leave," -109.9 3.4 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=2}] ~~~ summon wstd:text_display "§byou will be §eteleported back automatically§b!" -109.9 3.1 -16

execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=3}] ~~~ summon wstd:text_display "§b§lCreate a New Empty Room" -109.9 5.5 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=3}] ~~~ summon wstd:text_display "§bOnce we're ready, it's time to §ecreate a room§b!" -109.9 4.9 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=3}] ~~~ summon wstd:text_display "§bYou can §eempty your current room and apply a new" -109.9 4.6 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=3}] ~~~ summon wstd:text_display "§eroom size§b using the §e\"Change Room Size\"§b item!" -109.9 4.3 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=3}] ~~~ summon wstd:text_display "§bWe have §e3 preset sizes§b for you to choose from~" -109.9 4.0 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=3}] ~~~ summon wstd:text_display "§bIf not satisfied, build your own §ewithin our limits§b!" -109.9 3.7 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=3}] ~~~ summon wstd:text_display "§bIt might be tiring but worth it! awa" -109.9 3.4 -16

execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§b§lSet Up The Scene" -109.9 5.8 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§bHave gameplay ideas in mind?" -109.9 5.2 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§bWell... let's make a void death level first!" -109.9 4.9 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§bIt's easy, just open a hole in the floor!" -109.9 4.6 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§bOnce you §eenter the game mode, all barriers limiting" -109.9 4.3 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§ethe height of the level will disappear, becoming a real void§b~" -109.9 4.0 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§bSetting up the scene is quite free, but please §epay attention§b:" -109.9 3.7 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§c* Boats and ender pearls are not allowed!" -109.9 3.4 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§c* Players will be locked in adventure mode during the game." -109.9 3.1 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=4}] ~~~ summon wstd:text_display "§c* Please don't make cross-dimensional levels!" -109.9 2.8 -16

execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§b§lSave Changes" -109.9 5.8 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§bOnce everything is ready, we can save your masterpiece!" -109.9 5.2 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§bUse the §e\"Save Level\"§b item to save the level you created§b!" -109.9 4.9 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§bEach time you enter this level, the" -109.9 4.6 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§blevel you saved last time will be loaded~" -109.9 4.3 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§bSo don't worry about having to redo anything~ヽ(✿ﾟ▽ﾟ)ノ" -109.9 4.0 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§bIf you want to §eplay your own level§b, you" -109.9 3.7 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§bcan §equit level and switch to game mode§b!" -109.9 3.4 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§bIn game mode, you can enter this level as a player. It's that simple~" -109.9 3.1 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§aNext, we'll guide you in creating advanced DIY levels. Stay tuned!" -109.9 2.8 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=5}] ~~~ summon wstd:text_display "§c* exiting the level won't save your level! Save before exiting!" -109.9 2.5 -16

execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§b§lUsing Time Limited Levels" -109.9 6.1 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§bWould you like your level to become a \"time limited level\"? ヾ(•ω•`)o" -109.9 5.5 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§bLet's take a look at the §eCommand System§b behind you..." -109.9 5.2 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§bYou should see a command block called \"Time Limit\", right?" -109.9 4.9 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§bLet's open it, and here's the built-in command:" -109.9 4.6 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§dscoreboard players set @e[name=remainingTime] time §e-1" -109.9 4.3 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§bWe're interested in the last §e-1§b, which stands for §eDisabling timed" -109.9 4.0 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§elevels§b!Setting any negative number will disable time limitations (￣▽￣)" -109.9 3.7 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§bChange this -1 to §eany positive number§b, and it will set the" -109.9 3.4 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§btime limit for this level! The unit is in secondsヾ(^▽^*)))" -109.9 3.1 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§bEnabling timed levels will also automatically play the timed level" -109.9 2.8 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=6}] ~~~ summon wstd:text_display "§bmusic §eafter entering the level§b, isn't it considerate? φ(゜▽゜*)♪" -109.9 2.5 -16

execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§b§lCommand System" -109.9 6.2 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§bWe also offer support for the command system! The command" -109.9 5.75 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§bblocks behind you are the command system for this level..." -109.9 5.50 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§bQuite neat, isn't it? In fact, we've simplified" -109.9 5.25 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§bmany tedious and repetitive steps for you~!" -109.9 5.00 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§bIf you understand commands, you can modify them based on this~" -109.9 4.75 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§bYou can also adjust the permission level to 2 in the settings center," -109.9 4.50 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§bwhich will provide you with more underlying map features~" -109.9 4.25 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§bIf you can't figure out how to write it, you can" -109.9 4.00 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§brefer to our pre-set levels (DIY Level 6~10)!" -109.9 3.75 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§cTo ensure map stability, please make sure the command system" -109.9 3.50 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§cyou write has no bugs and will not affect other levels!" -109.9 3.25 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§cExiting the level will automatically clear the nearby area," -109.9 3.00 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§cso don't scatter the command blocks too much~" -109.9 2.75 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=7}] ~~~ summon wstd:text_display "§cAlso, please do not move the position of the preset command blocks!" -109.9 2.50 -16

execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=8}] ~~~ summon wstd:text_display "§b§lEnd of DIY Level Guide" -109.9 5.8 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=8}] ~~~ summon wstd:text_display "§bYou can now start creating your own levels!" -109.9 4.9 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=8}] ~~~ summon wstd:text_display "§bYou can also share your levels with others," -109.9 4.6 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=8}] ~~~ summon wstd:text_display "§beven if it's just a screenshot, getting more people" -109.9 4.3 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=8}] ~~~ summon wstd:text_display "§binvolved can double the fun!" -109.9 4.0 -16
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=counter,scores={backend=8}] ~~~ summon wstd:text_display "§bHave fun~" -109.9 3.5 -16

## ===== 命令方块注释 =====
## 启动与重启命令组
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b启动与重" -103 1.9 -12
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b启命令组" -103 1.6 -12
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a所有关卡" -104 2.9 -12
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a通用函数" -104 2.6 -12
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a标题命令" -105 2.6 -12
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a传送玩家" -106 2.6 -12
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a限时设定" -107 2.6 -12

## 退出功能命令组
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b退出功能" -103 1.9 -13
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b命令组" -103 1.6 -13

## 提示命令组
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b提示" -103 1.9 -14
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b命令组" -103 1.6 -14
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a提示文本" -104 2.6 -14

## 攻略命令组
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b攻略" -103 1.9 -15
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b命令组" -103 1.6 -15
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a攻略文本" -104 2.6 -15

## 跳过命令组
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b跳过" -103 1.9 -16
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b命令组" -103 1.6 -16
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a跳过命令" -104 2.6 -16

## 关卡结束命令组
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b关卡结束" -103 1.9 -17
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b命令组" -103 1.6 -17
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a死亡消息" -104 2.6 -17

## 快捷栏标题命令组
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b快捷栏标" -103 1.9 -18
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b题命令组" -103 1.6 -18
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a快捷栏标题" -104 2.6 -18

## 标题命令
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a标题命令" -103 1.9 -20
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a标题时间" -104 2.6 -20
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a主标题" -105 2.6 -20
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a副标题" -106 2.6 -20

## --- English ---

## 启动与重启命令组
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§b(Re)Start" -103 1.9 -12
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bCommands" -103 1.6 -12
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aAll levels" -104 2.9 -12
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aCommon Func" -104 2.6 -12
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aTitle Cmds" -105 2.6 -12
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aTp Players" -106 2.6 -12
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aTime Limit" -107 2.6 -12

## 退出功能命令组
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bQuit" -103 1.9 -13
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bCommands" -103 1.6 -13

## 提示命令组
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bHint" -103 1.9 -14
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bCommands" -103 1.6 -14
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aHint text" -104 2.6 -14

## 攻略命令组
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bStrategy" -103 1.9 -15
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bCommands" -103 1.6 -15
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aStrategy Text" -104 2.6 -15

## 跳过命令组
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bSkip" -103 1.9 -16
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bCommands" -103 1.6 -16
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aSkip Cmd" -104 2.6 -16

## 关卡结束命令组
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bLvl complete" -103 1.9 -17
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bCommands" -103 1.6 -17
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aDeath message" -104 2.6 -17

## 快捷栏标题命令组
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bActionbar Title" -103 1.9 -18
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bCommands" -103 1.6 -18
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aActionbar Title" -104 2.6 -18

## 标题命令
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aTitle Cmds" -103 1.9 -20
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aTitle Time" -104 2.6 -20
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aTitle" -105 2.6 -20
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aSubtitle" -106 2.6 -20

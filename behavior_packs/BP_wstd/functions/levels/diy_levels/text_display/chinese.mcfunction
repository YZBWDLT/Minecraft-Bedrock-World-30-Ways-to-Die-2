# ===== 中文展示文本 =====

# --- 重置展示文本 ---

kill @e[type=wstd:text_display]

# --- 自定义关卡向导 ---

## 第1步
execute if score diyLevels.step data matches 1 run summon wstd:text_display "§b§l欢迎来到自定义关卡！" -109.9 5.5 -16
execute if score diyLevels.step data matches 1 run summon wstd:text_display "§b这是一个自定义关卡的向导！" -109.9 4.9 -16
execute if score diyLevels.step data matches 1 run summon wstd:text_display "§b本向导将引导你逐渐学会制作属于你自己的关卡~" -109.9 4.6 -16
execute if score diyLevels.step data matches 1 if score isNetease data matches 0 run summon wstd:text_display "§a使用§e下一步§a以查看下面的步骤" -109.9 4.3 -16
execute if score diyLevels.step data matches 1 if score isNetease data matches 1 run summon wstd:text_display "§a使用§e下一步§a以查看以下的步骤" -109.9 4.3 -16
execute if score diyLevels.step data matches 1 run summon wstd:text_display "§a使用§e返回§a以查看前面的步骤" -109.9 4.0 -16
execute if score diyLevels.step data matches 1 run summon wstd:text_display "§a使用§e退出关卡§a以返回到大厅" -109.9 3.7 -16

## 第2步
execute if score diyLevels.step data matches 2 run summon wstd:text_display "§b§l活动范围限制" -109.9 5.5 -16
execute if score diyLevels.step data matches 2 run summon wstd:text_display "§b相信你已经看到那些§e\"红色的围墙\"§b了吧！" -109.9 4.9 -16
execute if score diyLevels.step data matches 2 run summon wstd:text_display "§b那些是§e边界方块§b，它会§e阻止非创造模式的玩家从其上方或下方越过§b！" -109.9 4.6 -16
execute if score diyLevels.step data matches 2 run summon wstd:text_display "§b不过为了限制创造模式的你到处乱跑，本地图也设置了一些限制..." -109.9 4.3 -16
execute if score diyLevels.step data matches 2 run summon wstd:text_display "§b就是在§e边界方块之内的这一大片区域§b！" -109.9 4.0 -16
execute if score diyLevels.step data matches 2 run summon wstd:text_display "§b此外还有，§e高度上也设置了限制§b，会有屏障阻挡你" -109.9 3.7 -16
execute if score diyLevels.step data matches 2 run summon wstd:text_display "§b这就是你的活动范围（32*32*32）了，切记不要离开哦，会把你§e自动传送回来§b的！" -109.9 3.4 -16

## 第3步
execute if score diyLevels.step data matches 3 run summon wstd:text_display "§b§l创立一个新的空房间" -109.9 5.5 -16
execute if score diyLevels.step data matches 3 run summon wstd:text_display "§b准备活动就绪后我们就该§e创建房间§b了！" -109.9 4.9 -16
execute if score diyLevels.step data matches 3 run summon wstd:text_display "§b使用§e\"更改房间大小\"§b物品§e可以清空你当前的房间并且应用新的房间大小§b！" -109.9 4.6 -16
execute if score diyLevels.step data matches 3 run summon wstd:text_display "§b我们为你预设了§e3档房间大小§b，视你的需要选择合适的大小哦~" -109.9 4.3 -16
execute if score diyLevels.step data matches 3 run summon wstd:text_display "§b如果你对这些房间都不满意，§e可以在我们限定的范围内自行建立房间§b！" -109.9 4.0 -16
execute if score diyLevels.step data matches 3 if score isNetease data matches 0 run summon wstd:text_display "§b可能自己建立房间会累一些，不过有时候也是值得的~awa" -109.9 3.7 -16
execute if score diyLevels.step data matches 3 if score isNetease data matches 1 run summon wstd:text_display "§b可能自己建立房间会累一些，不过有时候也是值得的~" -109.9 3.7 -16

## 第4步
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§b§l布置场景" -109.9 5.5 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§b也许你已经想好了许多激动人心的玩法了，又或者可能也在踌躇不前？" -109.9 4.9 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§b那我们来试着做一个虚空死法的关卡吧~很简单，只需要在地板开一个洞就好了！" -109.9 4.6 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§b在§e进入游戏模式后，所有关卡限制高度的屏障都会消失，成为真正的虚空§b~" -109.9 4.3 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§b布置场景是足够自由的，但有些事情你§e可能必须注意§b：" -109.9 4.0 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§c* 船和末影珍珠是不被允许的！它们可能会导致玩家卡bug，因此只在特定关卡开放" -109.9 3.7 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§c* 游戏模式下玩家将被锁定冒险模式，你可能需要允许方块以令玩家能够放置方块" -109.9 3.4 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§c* 请不要做跨维度关卡！可能会引发一些奇怪的意外问题..." -109.9 3.1 -16

## 第5步
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§b§l保存更改" -109.9 5.5 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§b当一切准备就绪之后，我们就可以把你的杰作保存下来啦！" -109.9 4.9 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§b使用§e\"保存关卡\"§b物品§e可以将你创造的关卡保存下来§b！" -109.9 4.6 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§b每一次当你进入这个关卡时，都会加载上一次你保存的关卡哦~" -109.9 4.3 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§b所以不用担心重做之类的事情啦~ヽ(✿ﾟ▽ﾟ)ノ" -109.9 4.0 -16
execute if score diyLevels.step data matches 5 if score isNetease data matches 0 run summon wstd:text_display "§b要想§e玩你自己的关卡§b，可以§e退出本关并切换为游戏模式§b！" -109.9 3.7 -16
execute if score diyLevels.step data matches 5 if score isNetease data matches 1 run summon wstd:text_display "§b要想§e体验你自己的关卡§b，可以§e退出本关并切换为游戏模式§b！" -109.9 3.7 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§b在游戏模式下进入本关，就能§e以玩家身份进入本关游玩§b啦，很简单吧~" -109.9 3.4 -16
execute if score diyLevels.step data matches 5 if score isNetease data matches 0 run summon wstd:text_display "§a基础的操作就是这些啦！下面我们会带你从更高级的角度制作一个DIY关卡~" -109.9 3.1 -16
execute if score diyLevels.step data matches 5 if score isNetease data matches 1 run summon wstd:text_display "§a基础的操作就是这些啦！以下我们会带你从更高级的角度制作一个DIY关卡~" -109.9 3.1 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§c请注意，退出关卡不会保存你自定义的关卡！退出之前请务必保存！" -109.9 2.8 -16

## 第6步
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§b§l使用限时关卡" -109.9 5.5 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§b你是否想让你的关卡也能成为所谓的\"限时关卡\"呢？ヾ(•ω•`)o" -109.9 4.9 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§b让我们来看一下你身后的§e命令系统§b..." -109.9 4.6 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§b想必你应该看到了一个命令方块叫做\"限时设定\"对吧？我们点开它，它的内置命令：" -109.9 4.3 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§bscoreboard players set @e[name=remainingTime] time §e-1§b" -109.9 4.0 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§b我们关注最后面的那个§e-1§b，它代表§e禁用限时关卡§b！设定任意一个负数都会禁用限时关卡(￣▽￣)" -109.9 3.7 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§b把这个-1换成§e任意一个正数§b，就会设定这关的限时为这么长的时间啦！单位是秒哦ヾ(^▽^*)))" -109.9 3.4 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§b启用限时关卡还会在§e进入关卡后自动播放限时关卡的音乐§b，是不是很贴心呢φ(゜▽゜*)♪" -109.9 3.1 -16

## 第7步
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§b§l命令系统" -109.9 5.5 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§b我们也提供了对命令系统的支持！在你身后的这些命令方块就是这关的命令系统了..." -109.9 4.9 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§b很简洁，对吗？事实上很多繁琐且重复的步骤我们都已经为你简化啦~！" -109.9 4.6 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§b如果你懂命令，可以在这基础上进行修改~" -109.9 4.3 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§b你也可以在设置中心将权限等级调整到2，会有更多地图底层的东西供你使用~" -109.9 4.0 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§b如果你想不通怎么写，可以参考一下我们给出的预设关卡（自定义关卡 第6关~第10关）哦！" -109.9 3.7 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§c为了保证地图稳定，请务必确保你写的命令系统没有bug，不会影响到其他关卡！" -109.9 3.4 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§c退出关卡会自动清空这附近的区域，所以不要将命令方块写的过于分散~" -109.9 3.1 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§c同时还请不要移动预设命令方块的位置！" -109.9 2.8 -16

## 第8步
execute if score diyLevels.step data matches 8 run summon wstd:text_display "§b§l自定义关卡向导结束" -109.9 5.5 -16
execute if score diyLevels.step data matches 8 run summon wstd:text_display "§b现在你可以开始创作属于你自己的关卡了！" -109.9 4.9 -16
execute if score diyLevels.step data matches 8 run summon wstd:text_display "§b你也可以将你的关卡分享给他人，哪怕是截图，让更多人参与进来能够使乐趣加倍哦！" -109.9 4.6 -16
execute if score diyLevels.step data matches 8 run summon wstd:text_display "§b祝你玩的开心~" -109.9 4.3 -16

# --- 命令方块注释 ---

## 启动与重启命令组
summon wstd:text_display "§b启动与重" -103 1.9 -12
summon wstd:text_display "§b启命令组" -103 1.6 -12
summon wstd:text_display "§a所有关卡" -104 2.9 -12
summon wstd:text_display "§a通用函数" -104 2.6 -12
summon wstd:text_display "§a标题命令" -105 2.6 -12
summon wstd:text_display "§a传送玩家" -106 2.6 -12
summon wstd:text_display "§a限时设定" -107 2.6 -12

## 退出功能命令组
summon wstd:text_display "§b退出功能" -103 1.9 -13
summon wstd:text_display "§b命令组" -103 1.6 -13

## 提示命令组
summon wstd:text_display "§b提示" -103 1.9 -14
summon wstd:text_display "§b命令组" -103 1.6 -14
summon wstd:text_display "§a提示文本" -104 2.6 -14

## 攻略命令组
summon wstd:text_display "§b攻略" -103 1.9 -15
summon wstd:text_display "§b命令组" -103 1.6 -15
summon wstd:text_display "§a攻略文本" -104 2.6 -15

## 跳过命令组
summon wstd:text_display "§b跳过" -103 1.9 -16
summon wstd:text_display "§b命令组" -103 1.6 -16
summon wstd:text_display "§a跳过命令" -104 2.6 -16

## 关卡结束命令组
summon wstd:text_display "§b关卡结束" -103 1.9 -17
summon wstd:text_display "§b命令组" -103 1.6 -17
summon wstd:text_display "§a死亡消息" -104 2.6 -17
summon wstd:text_display "§a所有关卡" -105 2.9 -17
summon wstd:text_display "§a通用函数" -105 2.6 -17

## 快捷栏标题命令组
summon wstd:text_display "§b快捷栏标" -103 1.9 -18
summon wstd:text_display "§b题命令组" -103 1.6 -18
summon wstd:text_display "§a快捷栏标题" -104 2.6 -18

## 标题命令
summon wstd:text_display "§a标题命令" -103 1.9 -20
summon wstd:text_display "§a标题时间" -104 2.6 -20
summon wstd:text_display "§a主标题" -105 2.6 -20
summon wstd:text_display "§a副标题" -106 2.6 -20

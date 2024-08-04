# ===== 中文展示文本 =====

# --- 清除展示文本 ---

kill @e[type=wstd:text_display]

# --- 箱子展示文本 ---

## 配方展示
execute if score fireworkTutorial.step data matches 2..7 run summon wstd:text_display "§6§l工作台合成 | 摆放顺序不影响结果" 14.7 21.2 -27
## 箱子
execute if score fireworkTutorial.step data matches 2..7 run summon wstd:text_display "§f§l纸 & 火药" 7.3 21.2 -21
execute if score fireworkTutorial.step data matches 3..7 run summon wstd:text_display "§f§l染料" 7.3 21.2 -23
execute if score fireworkTutorial.step data matches 4..7 run summon wstd:text_display "§f§l图案材料" 7.3 21.2 -25
execute if score fireworkTutorial.step data matches 5..7 run summon wstd:text_display "§f§l特效材料" 7.3 21.2 -27

# --- 教程正文 ---

## 第1步
execute if score fireworkTutorial.step data matches 1 run summon wstd:text_display "§bHi！欢迎来到烟花教程！" 10 23.2 -28.9
execute if score fireworkTutorial.step data matches 1 run summon wstd:text_display "§b在这里，你将了解到烟花如何合成，以及如何使用特定的烟花图案！" 10 22.9 -28.9
execute if score fireworkTutorial.step data matches 1 run summon wstd:text_display "§b准备好了就可以使用§e下一步§b继续了！" 10 22.6 -28.9
execute if score fireworkTutorial.step data matches 1 run summon wstd:text_display "§b提示：也可以随时返回到上一步~使用§e返回§b物品即可！" 10 22.3 -28.9

## 第2步
execute if score fireworkTutorial.step data matches 2 run summon wstd:text_display "§b一个普通的烟花只需要§e纸§b、§e火药§b即可合成！" 10 23.5 -28.9
execute if score fireworkTutorial.step data matches 2 run summon wstd:text_display "§b但是这类最普通的烟花也§e没有任何图案§b。" 10 23.2 -28.9
execute if score fireworkTutorial.step data matches 2 run summon wstd:text_display "§b试着做一点，然后试放出来吧！" 10 22.9 -28.9
execute if score fireworkTutorial.step data matches 2 run summon wstd:text_display "§b也可以试一下在合成烟花的时候§e多放几个火药§b！" 10 22.6 -28.9
execute if score fireworkTutorial.step data matches 2 run summon wstd:text_display "§b火药越多§e飞行时间越长§b，最高可达到3的飞行时长，很高很高！" 10 22.3 -28.9

## 第3步
execute if score fireworkTutorial.step data matches 3 run summon wstd:text_display "§b你可以给烟花设定§e颜色§b！" 10 23.5 -28.9
execute if score fireworkTutorial.step data matches 3 run summon wstd:text_display "§b这需要你首先制作一些§e烟火之星§b..." 10 23.2 -28.9
execute if score fireworkTutorial.step data matches 3 run summon wstd:text_display "§b利用§e染料§b和§e火药§b可以制作烟火之星！" 10 22.9 -28.9
execute if score fireworkTutorial.step data matches 3 run summon wstd:text_display "§b并且一个烟火之星上可以§e叠加§b至多8种颜色！！" 10 22.6 -28.9
execute if score fireworkTutorial.step data matches 3 run summon wstd:text_display "§b然后将§e烟火之星§b、§e纸§b和§e火药§b放在一起合成就OK啦！" 10 22.3 -28.9

## 第4步
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§b你也可以给烟花许多奇怪的§e图案§b！" 10 23.8 -28.9
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§b合成§e烟火之星§b时，只需再加一些§e特定的材料§b就可以合成特定形状的烟花了！" 10 23.5 -28.9
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§b这些§e特定的材料§b我姑且先叫成§e图案材料§b吧！它们包括：" 10 23.2 -28.9
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§a火焰弹：大型球状 | 羽毛：爆裂状 | 金粒：星状" 10 22.9 -28.9
execute if score fireworkTutorial.step data matches 4 if score isNetease data matches 0 run summon wstd:text_display "§a头颅（任意头颅）：苦力怕形状 | 什么都不加：小型球状" 10 22.6 -28.9
execute if score fireworkTutorial.step data matches 4 if score isNetease data matches 1 run summon wstd:text_display "§a头颅（任意头颅）：苦力怕形状 | 什么都不加：Small Ball" 10 22.6 -28.9
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§b然后利用这样的烟火之星做出来的烟花就有特定形状啦！但是注意：" 10 22.3 -28.9
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§c* 各种形状之间是§e互斥§c的！" 10 22.0 -28.9
execute if score fireworkTutorial.step data matches 4 run summon wstd:text_display "§c* 一旦放入了图案材料，就意味着你的烟花可用颜色就少了一种" 10 21.7 -28.9

## 第5步
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§b烟花还可以设定§e特殊效果§b！" 10 24.0 -28.9
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§b利用§e火药§b、§e染料§b和§e特效材料§b就可以合出特殊效果了！" 10 23.7 -28.9
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§b特效和特效材料包括：" 10 23.4 -28.9
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§a钻石 - 踪迹（爆出的烟花有大量粒子踪迹）" 10 23.1 -28.9
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§a萤石粉 - 闪烁（在爆炸后粒子会有闪烁效果）" 10 22.8 -28.9
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§b而且特效与§e特效和图案§b之间都是§e完全可以共存§b的哦！" 10 22.5 -28.9
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§c注意： 如果是§e连续发射§c烟花，§e不推荐§c做带有§e踪迹§c的烟花！" 10 22.2 -28.9
execute if score fireworkTutorial.step data matches 5 run summon wstd:text_display "§c因为烟花的§e粒子数限制和踪迹效果的§e粒子增加效果§c会导致十分" 10 21.9 -28.9
execute if score fireworkTutorial.step data matches 5 if score isNetease data matches 0 run summon wstd:text_display "§c严重的吞粒子现象！（§c别问我是怎么知道的QAQ§c）" 10 21.6 -28.9
execute if score fireworkTutorial.step data matches 5 if score isNetease data matches 1 run summon wstd:text_display "§c严重的吞粒子现象！（§c别问我是怎么知道的§c）" 10 21.6 -28.9

## 第6步
execute if score fireworkTutorial.step data matches 6 run summon wstd:text_display "§b烟花还还还可以设置爆炸后的§e渐变色§b！" 10 23.5 -28.9
execute if score fireworkTutorial.step data matches 6 run summon wstd:text_display "§b将§e烟火之星§b和§e染料§b放在一起合成..." 10 23.2 -28.9
execute if score fireworkTutorial.step data matches 6 run summon wstd:text_display "§b你就会得到爆炸后会§e渐变粒子颜色§b的烟火之星了！" 10 22.9 -28.9
execute if score fireworkTutorial.step data matches 6 run summon wstd:text_display "§b而且支持渐变为§e多个颜色§b！快试试吧~" 10 22.6 -28.9

## 第7步
execute if score fireworkTutorial.step data matches 7 run summon wstd:text_display "§b你以为烟花只能用§e一种烟火之星吗？" 10 23.2 -28.9
execute if score fireworkTutorial.step data matches 7 run summon wstd:text_display "§b大错特错啦！它可比你想象的强很多！（包括伤害）" 10 22.9 -28.9
execute if score fireworkTutorial.step data matches 7 run summon wstd:text_display "§b试一下把§e两个甚至多个烟火之星§b和纸、火药一起合成吧！" 10 22.6 -28.9

## 第8步
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§b烟花除了观赏用途之外也有着§e其他的实际用途§b！" 10 23.8 -28.9
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§b带有§e烟火之星§b的烟花是有§e爆炸伤害§b的！" 10 23.5 -28.9
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§b而普通的没有烟火之星的烟花则不造成爆炸伤害..." 10 23.2 -28.9
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§b于是烟花可以用于装在§e弩§b上，造成§e溅射伤害§b（AOE）！" 10 22.9 -28.9
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§b烟花也可用于在使用§e鞘翅滑翔§b时提供§e推动力§b！" 10 22.6 -28.9
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§b但注意不要用带§e烟火之星§b的烟花，会有§e爆炸伤害§b..." 10 22.3 -28.9
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§b这就是我们的全部内容啦！我们还提供了我们预设的一些烟花~" 10 22.0 -28.9
execute if score fireworkTutorial.step data matches 8 run summon wstd:text_display "§b祝玩得开心！点击\"下一步\"可以退回到第一步重新开始哦~" 10 21.7 -28.9


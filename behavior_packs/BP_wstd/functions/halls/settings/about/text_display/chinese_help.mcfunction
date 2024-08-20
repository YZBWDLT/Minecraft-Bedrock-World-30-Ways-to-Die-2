# ===== 中文展示文本 =====
# 仅限常见问题

# --- 清除文本展示实体 ---

kill @e[type=wstd:text_display]

# --- 固定内容 ---

## 上一步
summon wstd:text_display "§b上一步" -100 20.2 49

## 下一步
summon wstd:text_display "§b下一步" -106 20.2 49

## 常见问题
summon wstd:text_display "§l===== 常见问题 =====" -103 22.3 51

# --- 翻页内容 ---

## 1
execute if score settingCenter.help data matches 1 run summon wstd:text_display "§l§bQ1" -103 21.8 51
execute if score settingCenter.help data matches 1 run summon wstd:text_display "§b写在前面" -103 21.5 51
execute if score settingCenter.help data matches 1 run summon wstd:text_display "§l§aA1" -103 21.0 51
execute if score settingCenter.help data matches 1 run summon wstd:text_display "§a以下是我能想到的一些你可能遇到的问题，希望对你能够有所帮助~" -103 20.7 51
execute if score settingCenter.help data matches 1 run summon wstd:text_display "§a当然，如果以下这些问题都不是你想问的，可以直接在评论区提问哦！" -103 20.4 51
execute if score settingCenter.help data matches 1 run summon wstd:text_display "§a也可以来QQ群：673941729提问（这个回复更快更及时一些）！" -103 20.1 51

## 2
execute if score settingCenter.help data matches 2 run summon wstd:text_display "§l§bQ2" -103 21.8 51
execute if score settingCenter.help data matches 2 run summon wstd:text_display "§b地图难度不是我想选的怎么办？" -103 21.5 51
execute if score settingCenter.help data matches 2 run summon wstd:text_display "§l§aA2" -103 21.0 51
execute if score settingCenter.help data matches 2 run summon wstd:text_display "§a可以前往§l「设置中心 - 地图难度设定」§r§a调整哦！" -103 20.7 51
execute if score settingCenter.help data matches 2 if score isNetease data matches 0 run summon wstd:text_display "§a还可以自主选择是否开启提示等辅助功能。(～￣▽￣)～" -103 20.4 51
execute if score settingCenter.help data matches 2 if score isNetease data matches 1 run summon wstd:text_display "§a还可以自主选择是否开启提示等协助功能。(～￣▽￣)～" -103 20.4 51

## 3
execute if score settingCenter.help data matches 3 run summon wstd:text_display "§l§bQ3" -103 21.8 51
execute if score settingCenter.help data matches 3 run summon wstd:text_display "§b地图怎么这么大？四五十MB？" -103 21.5 51
execute if score settingCenter.help data matches 3 run summon wstd:text_display "§l§aA3" -103 21.0 51
execute if score settingCenter.help data matches 3 run summon wstd:text_display "§a这是因为地图内置了许多的BGM，音乐占大头QwQ" -103 20.7 51

## 4
execute if score settingCenter.help data matches 4 run summon wstd:text_display "§l§bQ4" -103 21.8 51
execute if score settingCenter.help data matches 4 run summon wstd:text_display "§b地图玩起来有点卡...？" -103 21.5 51
execute if score settingCenter.help data matches 4 run summon wstd:text_display "§l§aA4" -103 21.0 51
execute if score settingCenter.help data matches 4 run summon wstd:text_display "§a这个没办法...我已经尽力做优化了，到达这样体量的地图确实是很容易就会卡，" -103 20.7 51
execute if score settingCenter.help data matches 4 run summon wstd:text_display "§a当然也有可能是国际或netease高版本本身就比较卡的关系（尤其是渲染龙），" -103 20.4 51
execute if score settingCenter.help data matches 4 run summon wstd:text_display "§a所以这种问题我给出的解决方案就是：换个游玩设备QwQ" -103 20.1 51

## 5
execute if score settingCenter.help data matches 5 run summon wstd:text_display "§l§bQ5" -103 21.8 51
execute if score settingCenter.help data matches 5 run summon wstd:text_display "§b自定义死亡信息是怎么做到的？想学..." -103 21.5 51
execute if score settingCenter.help data matches 5 run summon wstd:text_display "§l§aA5" -103 21.0 51
execute if score settingCenter.help data matches 5 run summon wstd:text_display "§a直接一个tellraw就可以了哦，感兴趣的话可以拆地图看~" -103 20.7 51
execute if score settingCenter.help data matches 5 run summon wstd:text_display "§a（建议等玩完之后拆）(～￣▽￣)～" -103 20.4 51

## 6
execute if score settingCenter.help data matches 6 run summon wstd:text_display "§l§bQ6" -103 21.8 51
execute if score settingCenter.help data matches 6 run summon wstd:text_display "§b开了困难，结果不会过关，怎么办？" -103 21.5 51
execute if score settingCenter.help data matches 6 run summon wstd:text_display "§l§aA6" -103 21.0 51
execute if score settingCenter.help data matches 6 run summon wstd:text_display "§a参见Q2哦 awa" -103 20.7 51

## 7
execute if score settingCenter.help data matches 7 run summon wstd:text_display "§l§bQ7" -103 21.8 51
execute if score settingCenter.help data matches 7 run summon wstd:text_display "§b钓鱼怎么全是河豚呀！怎么做到的？" -103 21.5 51
execute if score settingCenter.help data matches 7 run summon wstd:text_display "§l§aA7" -103 21.0 51
execute if score settingCenter.help data matches 7 run summon wstd:text_display "§a因为我改了战利品表，不光如此，猪灵的战利品表也改过了 awa" -103 20.7 51
execute if score settingCenter.help data matches 7 run summon wstd:text_display "§a这个版本还加入了更多的战利品表，感兴趣的话可以" -103 20.4 51
execute if score settingCenter.help data matches 7 run summon wstd:text_display "§a自行分析地图的addon看看哦=w=" -103 20.1 51

## 8
execute if score settingCenter.help data matches 8 run summon wstd:text_display "§l§bQ8" -103 21.8 51
execute if score settingCenter.help data matches 8 run summon wstd:text_display "§b第30关挖遍地图也不知道怎么过关..." -103 21.5 51
execute if score settingCenter.help data matches 8 run summon wstd:text_display "§l§aA8" -103 21.0 51
execute if score settingCenter.help data matches 8 run summon wstd:text_display "§a可以在@极筑工坊 的B站账号查看本版本的攻略~" -103 20.7 51
execute if score settingCenter.help data matches 8 run summon wstd:text_display "§a注意是2.3版本哦！" -103 20.4 51
execute if score settingCenter.help data matches 8 run summon wstd:text_display "§a（2.4版本基本通用，但2.2版本的攻略有点太过时了）" -103 20.1 51

## 9
execute if score settingCenter.help data matches 9 run summon wstd:text_display "§l§bQ9" -103 21.8 51
execute if score settingCenter.help data matches 9 run summon wstd:text_display "§b玩完所有30关就是通关了吧！" -103 21.5 51
execute if score settingCenter.help data matches 9 run summon wstd:text_display "§l§aA9" -103 21.0 51
execute if score settingCenter.help data matches 9 run summon wstd:text_display "§a不是哦~我在这地图里设计了很多东西，还有彩蛋、限时关卡、" -103 20.7 51
execute if score settingCenter.help data matches 9 run summon wstd:text_display "§a以及进度，只有完成所有30个进度才算通关哦！" -103 20.4 51

## 10
execute if score settingCenter.help data matches 10 run summon wstd:text_display "§l§bQ10" -103 21.8 51
execute if score settingCenter.help data matches 10 run summon wstd:text_display "§b彩蛋在哪儿？" -103 21.5 51
execute if score settingCenter.help data matches 10 run summon wstd:text_display "§l§aA10" -103 21.0 51
execute if score settingCenter.help data matches 10 run summon wstd:text_display "§a既然你找到这儿了，那我就给你个更明显的提示吧..." -103 20.7 51
execute if score settingCenter.help data matches 10 run summon wstd:text_display "§c§l在大厅的起始屋，地图是有猫腻的！" -103 20.4 51
execute if score settingCenter.help data matches 10 run summon wstd:text_display "§a这再找不到就不能怪我了qwq，已经很显眼了..." -103 20.1 51

## 11
execute if score settingCenter.help data matches 11 run summon wstd:text_display "§l§bQ11" -103 21.8 51
execute if score settingCenter.help data matches 11 run summon wstd:text_display "§b想开坐标..." -103 21.5 51
execute if score settingCenter.help data matches 11 run summon wstd:text_display "§l§aA11" -103 21.0 51
execute if score settingCenter.help data matches 11 run summon wstd:text_display "§a可以是可以，不过这有点复杂，你需要去§l「设置中心" -103 20.7 51
execute if score settingCenter.help data matches 11 run summon wstd:text_display "§a§l- 权限等级设定与高级功能 - gamerule锁定设置」" -103 20.4 51
execute if score settingCenter.help data matches 11 run summon wstd:text_display "§a中开启，§c请当心解除锁定后可能带来的游戏漏洞！" -103 20.1 51

## 12
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§l§bQ12" -103 21.8 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§b这地图的防作弊怎么关？" -103 21.5 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§l§aA12" -103 21.0 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§a既然你问起来了，说明你已经发现了这地图有防作弊了=w=" -103 20.7 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§a但是放心，我设置了一套很人性化的解除防作弊方案！" -103 20.4 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§a在§l「设置中心 - 权限等级设定与高级设置 - 调整权限等级」" -103 20.1 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§a就可以调整权限等级啦！只要1以上的权限等级就可以无视防作弊限制了！" -103 19.8 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§a当然，如果你喜欢分析地图命令之类的我会推荐你调整到2，" -103 19.4 51
execute if score settingCenter.help data matches 12 run summon wstd:text_display "§a你会接触到许多地图底层的东西帮你拆图。" -103 19.1 51

## 13
execute if score settingCenter.help data matches 13 run summon wstd:text_display "§l§bQ13" -103 21.8 51
execute if score settingCenter.help data matches 13 run summon wstd:text_display "§b地图能联机吗？" -103 21.5 51
execute if score settingCenter.help data matches 13 run summon wstd:text_display "§l§aA13" -103 21.0 51
execute if score settingCenter.help data matches 13 run summon wstd:text_display "§a我建议是别吧...... qwq" -103 20.7 51
execute if score settingCenter.help data matches 13 run summon wstd:text_display "§a虽然能联机，但效果不好，我试过 qwq" -103 20.4 51

## 14
execute if score settingCenter.help data matches 14 run summon wstd:text_display "§l§bQ14" -103 21.8 51
execute if score settingCenter.help data matches 14 run summon wstd:text_display "§b地图很好玩！我可以推荐给我的好友玩吗？" -103 21.5 51
execute if score settingCenter.help data matches 14 run summon wstd:text_display "§l§aA14" -103 21.0 51
execute if score settingCenter.help data matches 14 run summon wstd:text_display "§a当然！完全可以！也完全欢迎录视频！！" -103 20.7 51
execute if score settingCenter.help data matches 14 run summon wstd:text_display "§c但是如果你要转载的话，请务必通知我让我知晓。" -103 20.4 51

## 15
execute if score settingCenter.help data matches 15 run summon wstd:text_display "§l§bQ15" -103 21.8 51
execute if score settingCenter.help data matches 15 run summon wstd:text_display "§b作者大大有其他的地图吗？我可以体验吗？" -103 21.5 51
execute if score settingCenter.help data matches 15 run summon wstd:text_display "§l§aA15" -103 21.0 51
execute if score settingCenter.help data matches 15 if score isNetease data matches 0 run summon wstd:text_display "§a当然！加入QQ群：673941729就可体验到我最新的地图！" -103 20.7 51
execute if score settingCenter.help data matches 15 if score isNetease data matches 1 run summon wstd:text_display "§a当然！进入群聊：673941729 企鹅就可体验到我最新的地图！" -103 20.7 51

## 16
execute if score settingCenter.help data matches 16 run summon wstd:text_display "§l§bQ16" -103 21.8 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 0 run summon wstd:text_display "§b地图打算发到网易吗？" -103 21.5 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 1 run summon wstd:text_display "§b地图打算发到Netease吗？" -103 21.5 51
execute if score settingCenter.help data matches 16 run summon wstd:text_display "§l§aA16" -103 21.0 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 0 run summon wstd:text_display "§a当你看到这段的时候，我已经用特殊手段检测到了你在用国际版awa，" -103 20.7 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 0 run summon wstd:text_display "§a至于网易版嘛我也更新到同步支持啦，网易版玩家应该会看到不同的内容。" -103 20.4 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 0 run summon wstd:text_display "§a确实是挺不容易的，我把所有的命令都迁移到了函数包里，以防止命令被屏蔽..." -103 20.1 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 0 run summon wstd:text_display "§c我太难啦 QAQ" -103 19.8 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 1 run summon wstd:text_display "§a当你看到这段的时候，我已经用特殊手段检测到了你在用China Edition awa，" -103 20.7 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 1 run summon wstd:text_display "§a只能说屏蔽词确实是有点...烦人，花了好大力气才在中国版适配，很不容易的呢！" -103 20.4 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 1 run summon wstd:text_display "§a我把所有的命令都迁移到了函数包里，以防止命令被屏蔽..." -103 20.1 51
execute if score settingCenter.help data matches 16 if score isNetease data matches 1 run summon wstd:text_display "§c我太难啦 QAQ" -103 19.8 51

## 17
execute if score settingCenter.help data matches 17 run summon wstd:text_display "§l§bQ17" -103 21.8 51
execute if score settingCenter.help data matches 17 run summon wstd:text_display "§b作者大大的联系方式？" -103 21.5 51
execute if score settingCenter.help data matches 17 run summon wstd:text_display "§l§aA17" -103 21.0 51
execute if score settingCenter.help data matches 17 if score isNetease data matches 0 run summon wstd:text_display "§a[QQ]1543585291 | [QQ测试群]673941729（推荐！）" -103 20.7 51
execute if score settingCenter.help data matches 17 if score isNetease data matches 1 run summon wstd:text_display "§a[企鹅]1543585291 | [企鹅group]673941729（推荐！）" -103 20.7 51
execute if score settingCenter.help data matches 17 run summon wstd:text_display "§a[B站]@一只卑微的量筒 | [B站|工作室]@极筑工坊" -103 20.4 51
execute if score settingCenter.help data matches 17 run summon wstd:text_display "§a[中国版|工作室]@极筑工坊 | [中国版]@YZBWDLT，@我是一只小量筒" -103 20.1 51
execute if score settingCenter.help data matches 17 run summon wstd:text_display "§a[国际版]@YZBWDLT" -103 19.8 51
execute if score settingCenter.help data matches 17 if score isNetease data matches 0 run summon wstd:text_display "§a非诚勿扰哦~推荐通过QQ测试群联系。" -103 19.4 51
execute if score settingCenter.help data matches 17 if score isNetease data matches 1 run summon wstd:text_display "§a非诚勿扰哦~推荐通过企鹅group联系。" -103 19.4 51

## 18
execute if score settingCenter.help data matches 18 run summon wstd:text_display "§l§bQ18" -103 21.8 51
execute if score settingCenter.help data matches 18 run summon wstd:text_display "§b地图有Bug！我卡关了QAQ" -103 21.5 51
execute if score settingCenter.help data matches 18 run summon wstd:text_display "§l§aA18" -103 21.0 51
execute if score settingCenter.help data matches 18 run summon wstd:text_display "§a遇到这种情况请一定要在评论区汇报！" -103 20.7 51
execute if score settingCenter.help data matches 18 if score isNetease data matches 0 run summon wstd:text_display "§a或者加我们的测试群当面和作者说哦~我们会以最快速度修复bug的！" -103 20.4 51
execute if score settingCenter.help data matches 18 if score isNetease data matches 1 run summon wstd:text_display "§a或者进我们的测试群当面和作者说哦~我们会以最快速度修复bug的！" -103 20.4 51
execute if score settingCenter.help data matches 18 run summon wstd:text_display "§a§o（可能也许或许大概似乎好像貌似说不定没准maybe可以吧=w=）" -103 20.1 51

## 19
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§l§bQ19" -103 21.8 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§b地图做的不戳！我想分析地图，应该从何开始呢？" -103 21.5 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§l§aA19" -103 21.0 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§a首先需要指出，这个地图有着十分复杂的系统在运作，全面涉及各种命令和Add-on，" -103 20.7 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§a所以对于新手来说，拆这张地图属实不是什么简单的事情...而且从这个版本开始，地图的所有命令系统" -103 20.45 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§a全部都迁移到了函数包里，所以拆地图的难度会更大一些。如果你要分析这张地图，我会给你以下几个步骤：" -103 20.20 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§a1. 玩完地图，然后重新下载" -103 19.90 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§a2. 在新地图执行2次/function settings/oplevel，调权限等级为2" -103 19.65 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§a3. 执行/function developer/developer_mode，开启开发者模式" -103 19.40 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§a4. 用文本编辑器(例如VSC)打开地图文件夹（如果是安卓可以用MT文件管理器之类的）" -103 19.15 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§a5.开始分析 :)" -103 18.90 51
execute if score settingCenter.help data matches 19 run summon wstd:text_display "§a加油，如果你能啃下这块骨头，我相信你会有很大的收获！也欢迎来群聊分享技术~！友善交流，非诚勿扰！" -103 18.65 51

## 20
execute if score settingCenter.help data matches 20 run summon wstd:text_display "§l§bQ20" -103 21.8 51
execute if score settingCenter.help data matches 20 run summon wstd:text_display "§b我还有其他问题！" -103 21.5 51
execute if score settingCenter.help data matches 20 run summon wstd:text_display "§l§aA20" -103 21.0 51
execute if score settingCenter.help data matches 20 run summon wstd:text_display "§a在评论区或来群里问吧~" -103 20.7 51
execute if score settingCenter.help data matches 20 run summon wstd:text_display "§a作者很希望大家能够在群里多活跃的哦qwq" -103 20.4 51

## 21
execute if score settingCenter.help data matches 21 run summon wstd:text_display "§l§bQ21" -103 21.8 51
execute if score settingCenter.help data matches 21 run summon wstd:text_display "§b考虑用其他网盘之类的提供下载链接吗？" -103 21.5 51
execute if score settingCenter.help data matches 21 run summon wstd:text_display "§l§aA21" -103 21.0 51
execute if score settingCenter.help data matches 21 run summon wstd:text_display "§a当然有考虑啦！" -103 20.7 51
execute if score settingCenter.help data matches 21 run summon wstd:text_display "§a但是一直不知道哪家更好用，如果你有更好用的可以给我推荐一波！" -103 20.4 51

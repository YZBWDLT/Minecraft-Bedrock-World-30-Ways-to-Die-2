kill @e[type=wstd:text_display]

summon wstd:text_display "§6地图规则与玩法" -98 20.2 49
summon wstd:text_display "§6Q&A" -98 19.9 49

summon wstd:text_display "§6地图难度与语言设定" -100 20.2 49

summon wstd:text_display "§b第30关对话设定" -102 20.2 49
execute @e[name=level30Dialogue,scores={settings=1..2}] ~~~ summon wstd:text_display "§a当前：开" -102 19.9 49
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ summon wstd:text_display "§c当前：关" -102 19.9 49

summon wstd:text_display "§bgamerule锁定设定" -104 20.2 49
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ summon wstd:text_display "§a当前：开" -104 19.9 49
execute @e[name=gameruleLocker,scores={settings=0}] ~~~ summon wstd:text_display "§c当前：关" -104 19.9 49

summon wstd:text_display "§6结束特效的烟花设定" -106 20.2 49

summon wstd:text_display "§b地图时间设定" -108 20.2 49
execute @e[name=mapTime,scores={settings=0}] ~~~ summon wstd:text_display "§b当前：终为白日" -108 19.9 49
execute @e[name=mapTime,scores={settings=1}] ~~~ summon wstd:text_display "§b当前：烟花教程黑夜" -108 19.9 49
execute @e[name=mapTime,scores={settings=2}] ~~~ summon wstd:text_display "§b当前：终为黑夜" -108 19.9 49
execute @e[name=mapTime,scores={settings=3}] ~~~ summon wstd:text_display "§b当前：时间流逝" -108 19.9 49

summon wstd:text_display "§b关卡完成延时设定" -98 20.2 43
execute @e[name=levelCompleteDelay,scores={settings=-5}] ~~~ summon wstd:text_display "§b当前：所有1.25秒" -98 19.9 43
execute @e[name=levelCompleteDelay,scores={settings=-4}] ~~~ summon wstd:text_display "§b当前：所有1.00秒" -98 19.9 43
execute @e[name=levelCompleteDelay,scores={settings=-3}] ~~~ summon wstd:text_display "§b当前：所有0.75秒" -98 19.9 43
execute @e[name=levelCompleteDelay,scores={settings=-2}] ~~~ summon wstd:text_display "§b当前：所有0.50秒" -98 19.9 43
execute @e[name=levelCompleteDelay,scores={settings=-1}] ~~~ summon wstd:text_display "§c当前：所有0.25秒" -98 19.9 43
execute @e[name=levelCompleteDelay,scores={settings=0}] ~~~ summon wstd:text_display "§c当前：不延时" -98 19.9 43
execute @e[name=levelCompleteDelay,scores={settings=1}] ~~~ summon wstd:text_display "§c当前：部分0.25秒" -98 19.9 43
execute @e[name=levelCompleteDelay,scores={settings=2}] ~~~ summon wstd:text_display "§b当前：部分0.50秒" -98 19.9 43
execute @e[name=levelCompleteDelay,scores={settings=3}] ~~~ summon wstd:text_display "§b当前：部分0.75秒" -98 19.9 43
execute @e[name=levelCompleteDelay,scores={settings=4}] ~~~ summon wstd:text_display "§b当前：部分1.00秒" -98 19.9 43
execute @e[name=levelCompleteDelay,scores={settings=5}] ~~~ summon wstd:text_display "§b当前：部分1.25秒" -98 19.9 43

summon wstd:text_display "§6浏览地图" -100 20.2 43

summon wstd:text_display "§b记分板显示设定" -102 20.2 43
execute @e[name=scoreboardDisplay,scores={settings=0}] ~~~ summon wstd:text_display "§b当前：隐藏" -102 19.9 43
execute @e[name=scoreboardDisplay,scores={settings=1}] ~~~ summon wstd:text_display "§b当前：部分" -102 19.9 43
execute @e[name=scoreboardDisplay,scores={settings=2}] ~~~ summon wstd:text_display "§b当前：完整" -102 19.9 43

summon wstd:text_display "§b速通模式设定" -104 20.2 43
execute @e[name=speedrunMode,scores={settings=1}] ~~~ summon wstd:text_display "§a当前：开" -104 19.9 43
execute @e[name=speedrunMode,scores={settings=0}] ~~~ summon wstd:text_display "§c当前：关" -104 19.9 43

summon wstd:text_display "§6权限等级设定" -106 20.2 43
summon wstd:text_display "§6与高级功能" -106 19.9 43

summon wstd:text_display "§6关于本地图" -108 20.2 43

summon wstd:text_display "§b恢复所有设置为默认" -109 20.2 46
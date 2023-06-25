kill @e[type=wstd:text_display]

summon wstd:text_display "§b权限等级设置" -98 20.2 49
execute @a[scores={oplevel=0}] ~~~ summon wstd:text_display "§b当前：0" -98 19.9 49
execute @a[scores={oplevel=1}] ~~~ summon wstd:text_display "§b当前：1" -98 19.9 49
execute @a[scores={oplevel=2}] ~~~ summon wstd:text_display "§b当前：2" -98 19.9 49

summon wstd:text_display "§b更改游戏模式" -102 20.2 49
summon wstd:text_display "§c创造模式" -102 19.9 49

summon wstd:text_display "§b更改游戏模式" -104 20.2 49
summon wstd:text_display "§a冒险模式" -104 19.9 49

summon wstd:text_display "§c开发者模式" -108 20.2 49
execute @e[name=developerMode,scores={settings=0}] ~~~ summon wstd:text_display "§a当前：关闭" -108 19.9 49
execute @e[name=developerMode,scores={settings=1}] ~~~ summon wstd:text_display "§c当前：开启" -108 19.9 49

summon wstd:text_display "§b解锁主线关卡" -98 20.2 43

summon wstd:text_display "§6重置地图" -108 20.2 43

kill @e[type=wstd:text_display]

# 中文
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b权限等级设置" -98 20.2 49
execute @e[name=language,scores={settings=0}] ~~~ execute @a[scores={oplevel=0}] ~~~ summon wstd:text_display "§b当前：0" -98 19.9 49
execute @e[name=language,scores={settings=0}] ~~~ execute @a[scores={oplevel=1}] ~~~ summon wstd:text_display "§b当前：1" -98 19.9 49
execute @e[name=language,scores={settings=0}] ~~~ execute @a[scores={oplevel=2}] ~~~ summon wstd:text_display "§b当前：2" -98 19.9 49

execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§c开发者模式" -98 20.2 43
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ summon wstd:text_display "§a当前：关闭" -98 19.9 43
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=developerMode,scores={settings=1}] ~~~ summon wstd:text_display "§c当前：开启" -98 19.9 43

execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b适配模式设置" -108 20.2 49
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=isNetease,scores={settings=0}] ~~~ summon wstd:text_display "§b当前：国际版" -108 19.9 49
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=isNetease,scores={settings=1}] ~~~ summon wstd:text_display "§b当前：Netease" -108 19.9 49

execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§c重置地图" -108 20.2 43

## --- 以下内容受开发者模式开启与关闭控制 ---
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=developerMode,scores={settings=1}] ~~~ summon wstd:text_display "§b解锁主线关卡" -100 20.2 43
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=developerMode,scores={settings=1}] ~~~ summon wstd:text_display "§b解锁彩蛋关卡" -102 20.2 43
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=developerMode,scores={settings=1}] ~~~ summon wstd:text_display "§b解锁限时关卡" -104 20.2 43
execute @e[name=language,scores={settings=0}] ~~~ execute @e[name=developerMode,scores={settings=1}] ~~~ summon wstd:text_display "§c重置地图记录" -106 20.2 43

## --- 以下内容受玩家权限等级控制 ---
execute @e[name=language,scores={settings=0}] ~~~ execute @a[scores={oplevel=1..},c=1] ~~~ summon wstd:text_display "§b更改游戏模式" -102 20.2 49
execute @e[name=language,scores={settings=0}] ~~~ execute @a[scores={oplevel=1..},c=1] ~~~ summon wstd:text_display "§c创造模式" -102 19.9 49
execute @e[name=language,scores={settings=0}] ~~~ execute @a[scores={oplevel=1..},c=1] ~~~ summon wstd:text_display "§b更改游戏模式" -104 20.2 49
execute @e[name=language,scores={settings=0}] ~~~ execute @a[scores={oplevel=1..},c=1] ~~~ summon wstd:text_display "§a冒险模式" -104 19.9 49


# 英文
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bPermission level setting" -98 20.2 49
execute @e[name=language,scores={settings=1}] ~~~ execute @a[scores={oplevel=0}] ~~~ summon wstd:text_display "§bNow: 0" -98 19.9 49
execute @e[name=language,scores={settings=1}] ~~~ execute @a[scores={oplevel=1}] ~~~ summon wstd:text_display "§bNow: 1" -98 19.9 49
execute @e[name=language,scores={settings=1}] ~~~ execute @a[scores={oplevel=2}] ~~~ summon wstd:text_display "§bNow: 2" -98 19.9 49

execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§cDeveloper Mode" -98 20.2 43
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ summon wstd:text_display "§aNow: Off" -98 19.9 43
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=developerMode,scores={settings=1}] ~~~ summon wstd:text_display "§cNow: On" -98 19.9 43

execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bAdaption Mode" -108 20.2 49
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=isNetease,scores={settings=0}] ~~~ summon wstd:text_display "§bNow: International" -108 19.9 49
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=isNetease,scores={settings=1}] ~~~ summon wstd:text_display "§bNow: Netease" -108 19.9 49

execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§6Reset the map" -108 20.2 43

## --- 以下内容受开发者模式开启与关闭控制 ---
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=developerMode,scores={settings=1}] ~~~ summon wstd:text_display "§bUnlock mainline levels" -100 20.2 43
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=developerMode,scores={settings=1}] ~~~ summon wstd:text_display "§bUnlock EE Levels" -102 20.2 43
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=developerMode,scores={settings=1}] ~~~ summon wstd:text_display "§bUnlock TL Levels" -104 20.2 43
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=developerMode,scores={settings=1}] ~~~ summon wstd:text_display "§cReset RECORD" -106 20.2 43

## --- 以下内容受玩家权限等级控制 ---
execute @e[name=language,scores={settings=1}] ~~~ execute @a[scores={oplevel=1..},c=1] ~~~ summon wstd:text_display "§bChange gamemode" -102 20.2 49
execute @e[name=language,scores={settings=1}] ~~~ execute @a[scores={oplevel=1..},c=1] ~~~ summon wstd:text_display "§cCreative" -102 19.9 49
execute @e[name=language,scores={settings=1}] ~~~ execute @a[scores={oplevel=1..},c=1] ~~~ summon wstd:text_display "§bChange gamemode" -104 20.2 49
execute @e[name=language,scores={settings=1}] ~~~ execute @a[scores={oplevel=1..},c=1] ~~~ summon wstd:text_display "§aAdventure" -104 19.9 49

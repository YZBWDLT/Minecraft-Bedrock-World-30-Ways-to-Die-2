kill @e[type=wstd:text_display]

execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b难度设置" -98 20.2 49
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b非常简单" -98 19.9 49

execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b难度设置" -100 20.2 49
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a简单" -100 19.9 49

execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b难度设置" -102 20.2 49
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§e普通" -102 19.9 49

execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b难度设置" -104 20.2 49
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§c困难" -104 19.9 49


execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b辅助物品启用设置" -100 20.2 43
execute @e[name=hintEnabled,scores={settings=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a提示 | §a当前：开" -100 19.9 43
execute @e[name=hintEnabled,scores={settings=0}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a提示 | §c当前：关" -100 19.9 43

execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b辅助物品启用设置" -102 20.2 43
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b攻略 | §a当前：开" -102 19.9 43
execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b攻略 | §c当前：关" -102 19.9 43

execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b辅助物品启用设置" -104 20.2 43
execute @e[name=skipEnabled,scores={settings=1}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§c跳过 | §a当前：开" -104 19.9 43
execute @e[name=skipEnabled,scores={settings=0}] ~~~ execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§c跳过 | §c当前：关" -104 19.9 43

summon wstd:text_display "§b语言设置" -108 20.2 49
summon wstd:text_display "§b中文" -108 19.9 49

summon wstd:text_display "§bLanguage Settings" -108 20.2 43
summon wstd:text_display "§bEnglish" -108 19.9 43

## 英文
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bDiff Setting" -98 20.2 49
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bVery Easy" -98 19.9 49

execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bDiff Setting" -100 20.2 49
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aEasy" -100 19.9 49

execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bDiff Setting" -102 20.2 49
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§eNormal" -102 19.9 49

execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bDiff Setting" -104 20.2 49
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§cHard" -104 19.9 49

execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bAux Func settings" -100 20.2 43
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=hintEnabled,scores={settings=1}] ~~~ summon wstd:text_display "§aHint | §aNow: On" -100 19.9 43
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=hintEnabled,scores={settings=0}] ~~~ summon wstd:text_display "§aHint | §cNow: Off" -100 19.9 43

execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bAux Func settings" -102 20.2 43
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=strategyEnabled,scores={settings=1}] ~~~ summon wstd:text_display "§bStrategy | §aNow: On" -102 19.9 43
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ summon wstd:text_display "§bStrategy | §cNow: Off" -102 19.9 43

execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bAux Func settings" -104 20.2 43
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ summon wstd:text_display "§cSkip | §aNow: On" -104 19.9 43
execute @e[name=language,scores={settings=1}] ~~~ execute @e[name=skipEnabled,scores={settings=0}] ~~~ summon wstd:text_display "§cSkip | §cNow: Off" -104 19.9 43

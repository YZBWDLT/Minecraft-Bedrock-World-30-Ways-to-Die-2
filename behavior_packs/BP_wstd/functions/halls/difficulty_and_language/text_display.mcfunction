kill @e[type=wstd:text_display]

summon wstd:text_display "§b难度设置" -98 20.2 49
summon wstd:text_display "§b非常简单" -98 19.9 49

summon wstd:text_display "§b难度设置" -100 20.2 49
summon wstd:text_display "§a简单" -100 19.9 49

summon wstd:text_display "§b难度设置" -102 20.2 49
summon wstd:text_display "§e普通" -102 19.9 49

summon wstd:text_display "§b难度设置" -104 20.2 49
summon wstd:text_display "§c困难" -104 19.9 49


summon wstd:text_display "§b辅助物品启用设置" -100 20.2 43
execute @e[name=hintEnabled,scores={settings=1}] ~~~ summon wstd:text_display "§a提示 | §a当前：开" -100 19.9 43
execute @e[name=hintEnabled,scores={settings=0}] ~~~ summon wstd:text_display "§a提示 | §c当前：关" -100 19.9 43

summon wstd:text_display "§b辅助物品启用设置" -102 20.2 43
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ summon wstd:text_display "§b攻略 | §a当前：开" -102 19.9 43
execute @e[name=strategyEnabled,scores={settings=0}] ~~~ summon wstd:text_display "§b攻略 | §c当前：关" -102 19.9 43

summon wstd:text_display "§b辅助物品启用设置" -104 20.2 43
execute @e[name=skipEnabled,scores={settings=1}] ~~~ summon wstd:text_display "§c跳过 | §a当前：开" -104 19.9 43
execute @e[name=skipEnabled,scores={settings=0}] ~~~ summon wstd:text_display "§c跳过 | §c当前：关" -104 19.9 43

summon wstd:text_display "§b语言设置" -108 20.2 49
summon wstd:text_display "§b中文" -108 19.9 49

summon wstd:text_display "§bLanguage Settings" -108 20.2 43
summon wstd:text_display "§bEnglish" -108 19.9 43
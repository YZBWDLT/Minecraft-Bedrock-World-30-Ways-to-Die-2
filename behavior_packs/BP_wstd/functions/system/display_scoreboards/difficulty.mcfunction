## 移除难度显示
scoreboard players reset "§l难度 §r§7还未选择" display
scoreboard players reset "§l难度 §r§b非常简单" display
scoreboard players reset "§l难度 §r§a简单" display
scoreboard players reset "§l难度 §r§e普通" display
scoreboard players reset "§l难度 §r§c困难" display
scoreboard players reset "§l难度 §r§d自定义" display

## 显示为自定义，但满足预设难度情况的时候则不显示为自定义
scoreboard players set "§l难度 §r§d自定义" display 4
execute @e[name=hintEnabled,scores={settings=1}] ~~~ execute @e[name=strategyEnabled,scores={settings=1}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ scoreboard players reset "§l难度 §r§d自定义" display
execute @e[name=hintEnabled,scores={settings=1}] ~~~ execute @e[name=strategyEnabled,scores={settings=1}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ scoreboard players set "§l难度 §r§b非常简单" display 4
execute @e[name=hintEnabled,scores={settings=1}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ scoreboard players reset "§l难度 §r§d自定义" display
execute @e[name=hintEnabled,scores={settings=1}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ scoreboard players set "§l难度 §r§a简单" display 4
execute @e[name=hintEnabled,scores={settings=0}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ scoreboard players reset "§l难度 §r§d自定义" display
execute @e[name=hintEnabled,scores={settings=0}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ scoreboard players set "§l难度 §r§e普通" display 4
execute @e[name=hintEnabled,scores={settings=0}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=0}] ~~~ scoreboard players reset "§l难度 §r§d自定义" display
execute @e[name=hintEnabled,scores={settings=0}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=0}] ~~~ scoreboard players set "§l难度 §r§c困难" display 4

scoreboard players reset "§lDiff §r§7None" display1
scoreboard players reset "§lDiff §r§bVery Easy" display1
scoreboard players reset "§lDiff §r§aEasy" display1
scoreboard players reset "§lDiff §r§eNormal" display1
scoreboard players reset "§lDiff §r§cHard" display1
scoreboard players reset "§lDiff §r§dCustom" display1

scoreboard players set "§lDiff §r§dCustom" display1 4
execute @e[name=hintEnabled,scores={settings=1}] ~~~ execute @e[name=strategyEnabled,scores={settings=1}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ scoreboard players reset "§lDiff §r§dCustom" display1
execute @e[name=hintEnabled,scores={settings=1}] ~~~ execute @e[name=strategyEnabled,scores={settings=1}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ scoreboard players set "§lDiff §r§bVery Easy" display1 4
execute @e[name=hintEnabled,scores={settings=1}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ scoreboard players reset "§lDiff §r§dCustom" display1
execute @e[name=hintEnabled,scores={settings=1}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ scoreboard players set "§lDiff §r§aEasy" display1 4
execute @e[name=hintEnabled,scores={settings=0}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ scoreboard players reset "§lDiff §r§dCustom" display1
execute @e[name=hintEnabled,scores={settings=0}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ scoreboard players set "§lDiff §r§eNormal" display1 4
execute @e[name=hintEnabled,scores={settings=0}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=0}] ~~~ scoreboard players reset "§lDiff §r§dCustom" display1
execute @e[name=hintEnabled,scores={settings=0}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=0}] ~~~ scoreboard players set "§lDiff §r§cHard" display1 4

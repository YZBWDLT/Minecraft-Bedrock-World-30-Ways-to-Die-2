# ===== 输出为记分板 =====
# 用于将当前的难度数据输出到记分板上

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 输出难度，中文为display记分板，英文为display1记分板

# --- 中文 ---

scoreboard players reset "§l难度 §r§7还未选择" display
scoreboard players reset "§l难度 §r§b非常简单" display
scoreboard players reset "§l难度 §r§a简单" display
scoreboard players reset "§l难度 §r§e普通" display
scoreboard players reset "§l难度 §r§c困难" display
scoreboard players reset "§l难度 §r§d自定义" display

## 默认显示为自定义
scoreboard players set "§l难度 §r§d自定义" display 4

## 满足预设难度情况的时候则不显示为自定义
## 预设情况：（提示）（攻略）（跳过）
## 111、101、001、000

execute if score hintEnabled settings matches 1 if score strategyEnabled settings matches 1 if score skipEnabled settings matches 1 run scoreboard players reset "§l难度 §r§d自定义" display
execute if score hintEnabled settings matches 1 if score strategyEnabled settings matches 1 if score skipEnabled settings matches 1 run scoreboard players set "§l难度 §r§b非常简单" display 4

execute if score hintEnabled settings matches 1 if score strategyEnabled settings matches 0 if score skipEnabled settings matches 1 run scoreboard players reset "§l难度 §r§d自定义" display
execute if score hintEnabled settings matches 1 if score strategyEnabled settings matches 0 if score skipEnabled settings matches 1 run scoreboard players set "§l难度 §r§a简单" display 4

execute if score hintEnabled settings matches 0 if score strategyEnabled settings matches 0 if score skipEnabled settings matches 1 run scoreboard players reset "§l难度 §r§d自定义" display
execute if score hintEnabled settings matches 0 if score strategyEnabled settings matches 0 if score skipEnabled settings matches 1 run scoreboard players set "§l难度 §r§e普通" display 4

execute if score hintEnabled settings matches 0 if score strategyEnabled settings matches 0 if score skipEnabled settings matches 0 run scoreboard players reset "§l难度 §r§d自定义" display
execute if score hintEnabled settings matches 0 if score strategyEnabled settings matches 0 if score skipEnabled settings matches 0 run scoreboard players set "§l难度 §r§c困难" display 4

# --- English ---

scoreboard players reset "§lDiff §r§7None" display1
scoreboard players reset "§lDiff §r§bVery Easy" display1
scoreboard players reset "§lDiff §r§aEasy" display1
scoreboard players reset "§lDiff §r§eNormal" display1
scoreboard players reset "§lDiff §r§cHard" display1
scoreboard players reset "§lDiff §r§dCustom" display1

scoreboard players set "§lDiff §r§dCustom" display1 4

execute if score hintEnabled settings matches 1 if score strategyEnabled settings matches 1 if score skipEnabled settings matches 1 run scoreboard players reset "§lDiff §r§dCustom" display1
execute if score hintEnabled settings matches 1 if score strategyEnabled settings matches 1 if score skipEnabled settings matches 1 run scoreboard players set "§lDiff §r§bVery Easy" display1 4

execute if score hintEnabled settings matches 1 if score strategyEnabled settings matches 0 if score skipEnabled settings matches 1 run scoreboard players reset "§lDiff §r§dCustom" display1
execute if score hintEnabled settings matches 1 if score strategyEnabled settings matches 0 if score skipEnabled settings matches 1 run scoreboard players set "§lDiff §r§aEasy" display1 4

execute if score hintEnabled settings matches 0 if score strategyEnabled settings matches 0 if score skipEnabled settings matches 1 run scoreboard players reset "§lDiff §r§dCustom" display1
execute if score hintEnabled settings matches 0 if score strategyEnabled settings matches 0 if score skipEnabled settings matches 1 run scoreboard players set "§lDiff §r§eNormal" display1 4

execute if score hintEnabled settings matches 0 if score strategyEnabled settings matches 0 if score skipEnabled settings matches 0 run scoreboard players reset "§lDiff §r§dCustom" display1
execute if score hintEnabled settings matches 0 if score strategyEnabled settings matches 0 if score skipEnabled settings matches 0 run scoreboard players set "§lDiff §r§cHard" display1 4

# ===== 中文展示文本 =====

# --- 清除展示文本 ---

kill @e[type=wstd:text_display]

# --- 高级设置 ---

## 权限等级设置
summon wstd:text_display "§b权限等级设置" -98 20.2 49
execute if score oplevel settings matches 0 run summon wstd:text_display "§b当前：0" -98 19.9 49
execute if score oplevel settings matches 1 run summon wstd:text_display "§b当前：1" -98 19.9 49
execute if score oplevel settings matches 2 run summon wstd:text_display "§b当前：2" -98 19.9 49
## 更改游戏模式 | 仅限权限等级大于等于1时出现
execute if score oplevel settings matches 1.. run summon wstd:text_display "§b更改游戏模式" -100 20.2 49
execute if score oplevel settings matches 1.. run summon wstd:text_display "§c创造模式" -100 19.9 49

execute if score oplevel settings matches 1.. run summon wstd:text_display "§b更改游戏模式" -102 20.2 49
execute if score oplevel settings matches 1.. run summon wstd:text_display "§a冒险模式" -102 19.9 49
## 关卡完成延时设定
summon wstd:text_display "§b关卡完成延时设定" -104 20.2 49
execute if score levelCompleteDelay settings matches 0 run summon wstd:text_display "§c当前：不延时" -104 19.9 49
execute if score levelCompleteDelay settings matches 1 run summon wstd:text_display "§c当前：部分0.25秒" -104 19.9 49
execute if score levelCompleteDelay settings matches 2 run summon wstd:text_display "§b当前：部分0.50秒" -104 19.9 49
execute if score levelCompleteDelay settings matches 3 run summon wstd:text_display "§b当前：部分0.75秒" -104 19.9 49
execute if score levelCompleteDelay settings matches 4 run summon wstd:text_display "§b当前：部分1.00秒" -104 19.9 49
execute if score levelCompleteDelay settings matches 5 run summon wstd:text_display "§b当前：部分1.25秒" -104 19.9 49
execute if score levelCompleteDelay settings matches 6 run summon wstd:text_display "§c当前：所有0.25秒" -104 19.9 49
execute if score levelCompleteDelay settings matches 7 run summon wstd:text_display "§b当前：所有0.50秒" -104 19.9 49
execute if score levelCompleteDelay settings matches 8 run summon wstd:text_display "§b当前：所有0.75秒" -104 19.9 49
execute if score levelCompleteDelay settings matches 9 run summon wstd:text_display "§b当前：所有1.00秒" -104 19.9 49
execute if score levelCompleteDelay settings matches 10 run summon wstd:text_display "§b当前：所有1.25秒" -104 19.9 49
## gamerule锁定设定
summon wstd:text_display "§bgamerule锁定设定" -106 20.2 49
execute if score gameruleLock settings matches 1 run summon wstd:text_display "§a当前：开" -106 19.9 49
execute if score gameruleLock settings matches 0 run summon wstd:text_display "§c当前：关" -106 19.9 49
## 重置地图
summon wstd:text_display "§c重置地图" -108 20.2 49

# --- 开发者设置 ---

## 开发者模式设置
summon wstd:text_display "§c开发者模式" -98 20.2 43
execute if score developerMode settings matches 0 run summon wstd:text_display "§a当前：关闭" -98 19.9 43
execute if score developerMode settings matches 1 run summon wstd:text_display "§c当前：开启" -98 19.9 43
## 解锁关卡 | 仅限开发者模式启用后出现
execute if score developerMode settings matches 1 run summon wstd:text_display "§b解锁主线关卡" -100 20.2 43
execute if score developerMode settings matches 1 run summon wstd:text_display "§b解锁彩蛋关卡" -102 20.2 43
execute if score developerMode settings matches 1 run summon wstd:text_display "§b解锁限时关卡" -104 20.2 43
## 解锁进度 | 仅限开发者模式启用后出现
execute if score developerMode settings matches 1 run summon wstd:text_display "§b完成所有进度" -106 20.2 43
## 重置地图记录 | 仅限开发者模式启用后出现
execute if score developerMode settings matches 1 run summon wstd:text_display "§c重置地图记录" -108 20.2 43

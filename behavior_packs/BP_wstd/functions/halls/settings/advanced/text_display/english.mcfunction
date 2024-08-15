# ===== 英文展示文本 =====

# --- 清除展示文本 ---

kill @e[type=wstd:text_display]

# --- 高级设置 ---

## 权限等级设置
summon wstd:text_display "§bPermission level setting" -98 20.2 49
execute if score oplevel settings matches 0 run summon wstd:text_display "§bNow: 0" -98 19.9 49
execute if score oplevel settings matches 1 run summon wstd:text_display "§bNow: 1" -98 19.9 49
execute if score oplevel settings matches 2 run summon wstd:text_display "§bNow: 2" -98 19.9 49
## 更改游戏模式 | 仅限权限等级大于等于1时出现
execute if score oplevel settings matches 1.. run summon wstd:text_display "§bChange gamemode" -100 20.2 49
execute if score oplevel settings matches 1.. run summon wstd:text_display "§cCreative" -100 19.9 49
execute if score oplevel settings matches 1.. run summon wstd:text_display "§bChange gamemode" -102 20.2 49
execute if score oplevel settings matches 1.. run summon wstd:text_display "§aAdventure" -102 19.9 49
## 关卡完成延时设定
summon wstd:text_display "§bLevel Completed Delay" -104 20.2 49
execute if score levelCompleteDelay settings matches 0 run summon wstd:text_display "§cNow: No Delay" -104 19.9 49
execute if score levelCompleteDelay settings matches 1 run summon wstd:text_display "§cNow: Some 0.25s" -104 19.9 49
execute if score levelCompleteDelay settings matches 2 run summon wstd:text_display "§bNow: Some 0.50s" -104 19.9 49
execute if score levelCompleteDelay settings matches 3 run summon wstd:text_display "§bNow: Some 0.75s" -104 19.9 49
execute if score levelCompleteDelay settings matches 4 run summon wstd:text_display "§bNow: Some 1.00s" -104 19.9 49
execute if score levelCompleteDelay settings matches 5 run summon wstd:text_display "§bNow: Some 1.25s" -104 19.9 49
execute if score levelCompleteDelay settings matches 6 run summon wstd:text_display "§cNow: All 0.25s" -104 19.9 49
execute if score levelCompleteDelay settings matches 7 run summon wstd:text_display "§bNow: All 0.50s" -104 19.9 49
execute if score levelCompleteDelay settings matches 8 run summon wstd:text_display "§bNow: All 0.75s" -104 19.9 49
execute if score levelCompleteDelay settings matches 9 run summon wstd:text_display "§bNow: All 1.00s" -104 19.9 49
execute if score levelCompleteDelay settings matches 10 run summon wstd:text_display "§bNow: All 1.25s" -104 19.9 49
## gamerule锁定设定
summon wstd:text_display "§bGamerule Locker" -106 20.2 49
execute if score gameruleLock settings matches 1 run summon wstd:text_display "§aNow: On" -106 19.9 49
execute if score gameruleLock settings matches 0 run summon wstd:text_display "§cNow: Off" -106 19.9 49
## 重置地图
summon wstd:text_display "§6Reset the map" -108 20.2 49

# --- 开发者设置 ---

## 开发者模式设置
summon wstd:text_display "§cDeveloper Mode" -98 20.2 43
execute if score developerMode settings matches 0 run summon wstd:text_display "§aNow: Off" -98 19.9 43
execute if score developerMode settings matches 1 run summon wstd:text_display "§cNow: On" -98 19.9 43
## 解锁关卡 | 仅限开发者模式启用后出现
execute if score developerMode settings matches 1 run summon wstd:text_display "§bUnlock ML levels" -100 20.2 43
execute if score developerMode settings matches 1 run summon wstd:text_display "§bUnlock EE levels" -102 20.2 43
execute if score developerMode settings matches 1 run summon wstd:text_display "§bUnlock TL levels" -104 20.2 43
## 解锁进度 | 仅限开发者模式启用后出现
execute if score developerMode settings matches 1 run summon wstd:text_display "§bComplete all advancements" -106 20.2 43
## 重置地图记录 | 仅限开发者模式启用后出现
execute if score developerMode settings matches 1 run summon wstd:text_display "§cRESET RECORD" -108 20.2 43

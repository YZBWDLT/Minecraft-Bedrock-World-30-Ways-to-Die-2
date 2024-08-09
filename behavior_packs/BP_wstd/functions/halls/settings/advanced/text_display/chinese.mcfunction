# ===== 中文展示文本 =====

# --- 清除展示文本 ---

kill @e[type=wstd:text_display]

# --- 权限等级设置 ---

summon wstd:text_display "§b权限等级设置" -98 20.2 49
execute if score oplevel settings matches 0 run summon wstd:text_display "§b当前：0" -98 19.9 49
execute if score oplevel settings matches 1 run summon wstd:text_display "§b当前：1" -98 19.9 49
execute if score oplevel settings matches 2 run summon wstd:text_display "§b当前：2" -98 19.9 49

# --- 开发者模式 ---

summon wstd:text_display "§c开发者模式" -98 20.2 43
execute if score developerMode settings matches 0 run summon wstd:text_display "§a当前：关闭" -98 19.9 43
execute if score developerMode settings matches 1 run summon wstd:text_display "§c当前：开启" -98 19.9 43

# --- 重置地图 ---

summon wstd:text_display "§c重置地图" -108 20.2 43

# --- 解锁关卡 ---
# 仅限开发者模式启用后出现

execute if score developerMode settings matches 1 run summon wstd:text_display "§b解锁主线关卡" -100 20.2 43
execute if score developerMode settings matches 1 run summon wstd:text_display "§b解锁彩蛋关卡" -102 20.2 43
execute if score developerMode settings matches 1 run summon wstd:text_display "§b解锁限时关卡" -104 20.2 43

# --- 重置地图记录 ---
# 仅限开发者模式启用后出现

execute if score developerMode settings matches 1 run summon wstd:text_display "§c重置地图记录" -106 20.2 43

# --- 语言与版本检测 ---

summon wstd:text_display "§b语言与版本检测" -108 20.2 49
execute if score isNetease data matches 0 run summon wstd:text_display "§b当前：中文国际版" -108 19.9 49
execute if score isNetease data matches 1 run summon wstd:text_display "§b当前：中文Netease版" -108 19.9 49

# --- 更改游戏模式 ---
# 仅限权限等级大于等于1时出现

execute if score oplevel settings matches 1.. run summon wstd:text_display "§b更改游戏模式" -102 20.2 49
execute if score oplevel settings matches 1.. run summon wstd:text_display "§c创造模式" -102 19.9 49
execute if score oplevel settings matches 1.. run summon wstd:text_display "§b更改游戏模式" -104 20.2 49
execute if score oplevel settings matches 1.. run summon wstd:text_display "§a冒险模式" -104 19.9 49

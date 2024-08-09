# ===== 英文展示文本 =====

# --- 清除展示文本 ---

kill @e[type=wstd:text_display]

# --- 权限等级设置 ---

summon wstd:text_display "§bPermission level setting" -98 20.2 49
execute if score oplevel settings matches 0 run summon wstd:text_display "§bNow: 0" -98 19.9 49
execute if score oplevel settings matches 1 run summon wstd:text_display "§bNow: 1" -98 19.9 49
execute if score oplevel settings matches 2 run summon wstd:text_display "§bNow: 2" -98 19.9 49

# --- 开发者模式 ---

summon wstd:text_display "§cDeveloper Mode" -98 20.2 43
execute if score developerMode settings matches 0 run summon wstd:text_display "§aNow: Off" -98 19.9 43
execute if score developerMode settings matches 1 run summon wstd:text_display "§cNow: On" -98 19.9 43

# --- 重置地图 ---

summon wstd:text_display "§6Reset the map" -108 20.2 43

# --- 解锁关卡 ---
# 仅限开发者模式启用后出现

execute if score developerMode settings matches 1 run summon wstd:text_display "§bUnlock mainline levels" -100 20.2 43
execute if score developerMode settings matches 1 run summon wstd:text_display "§bUnlock EE Levels" -102 20.2 43
execute if score developerMode settings matches 1 run summon wstd:text_display "§bUnlock TL Levels" -104 20.2 43

# --- 重置地图记录 ---
# 仅限开发者模式启用后出现

execute if score developerMode settings matches 1 run summon wstd:text_display "§cRESET RECORD" -106 20.2 43

# --- 语言与版本检测 ---

summon wstd:text_display "§bLanguage and version test" -108 20.2 49
execute if score isNetease data matches 0 run summon wstd:text_display "§bNow: International English" -108 19.9 49
execute if score isNetease data matches 1 run summon wstd:text_display "§bNow: Netease English" -108 19.9 49

# --- 更改游戏模式 ---
# 仅限权限等级大于等于1时出现

execute if score oplevel settings matches 1.. run summon wstd:text_display "§bChange gamemode" -102 20.2 49
execute if score oplevel settings matches 1.. run summon wstd:text_display "§cCreative" -102 19.9 49
execute if score oplevel settings matches 1.. run summon wstd:text_display "§bChange gamemode" -104 20.2 49
execute if score oplevel settings matches 1.. run summon wstd:text_display "§aAdventure" -104 19.9 49

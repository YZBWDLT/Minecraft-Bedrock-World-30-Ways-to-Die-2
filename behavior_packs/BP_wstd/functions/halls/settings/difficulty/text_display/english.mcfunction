# ===== 英文展示文本 =====

# --- 清除展示文本 ---

kill @e[type=wstd:text_display]

# --- 难度设置 ---
summon wstd:text_display "§bDiff Setting" -98 20.2 49
summon wstd:text_display "§bVery Easy" -98 19.9 49

summon wstd:text_display "§bDiff Setting" -100 20.2 49
summon wstd:text_display "§aEasy" -100 19.9 49

summon wstd:text_display "§bDiff Setting" -102 20.2 49
summon wstd:text_display "§eNormal" -102 19.9 49

summon wstd:text_display "§bDiff Setting" -104 20.2 49
summon wstd:text_display "§cHard" -104 19.9 49

# --- 提示、攻略、跳过单项设置 ---

summon wstd:text_display "§bAux Func settings" -100 20.2 43
execute if score hintEnabled settings matches 1 run summon wstd:text_display "§aHint | §aNow: On" -100 19.9 43
execute if score hintEnabled settings matches 0 run summon wstd:text_display "§aHint | §cNow: Off" -100 19.9 43

summon wstd:text_display "§bAux Func settings" -102 20.2 43
execute if score strategyEnabled settings matches 1 run summon wstd:text_display "§bStrategy | §aNow: On" -102 19.9 43
execute if score strategyEnabled settings matches 0 run summon wstd:text_display "§bStrategy | §cNow: Off" -102 19.9 43

summon wstd:text_display "§bAux Func settings" -104 20.2 43
execute if score skipEnabled settings matches 1 run summon wstd:text_display "§cSkip | §aNow: On" -104 19.9 43
execute if score skipEnabled settings matches 0 run summon wstd:text_display "§cSkip | §cNow: Off" -104 19.9 43

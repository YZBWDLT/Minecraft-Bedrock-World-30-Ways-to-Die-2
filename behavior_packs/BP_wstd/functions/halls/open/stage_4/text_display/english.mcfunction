# ===== 英文展示文本 =====

# --- 展示内容 ---

summon wstd:text_display "§l§bVery Easy" 48 22 -22
summon wstd:text_display "§l§aEasy" 46 22 -22
summon wstd:text_display "§l§eNormal" 44 22 -22
summon wstd:text_display "§l§cHard" 42 22 -22
execute if score mapCompletedTimes record matches 1.. run summon wstd:text_display "§l§cSpeedrun Mode" 41 22 -25

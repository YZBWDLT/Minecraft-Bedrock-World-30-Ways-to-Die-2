# ===== 中文展示文本 =====

# --- 展示内容 ---

summon wstd:text_display "§l§b非常简单" 48 22 -22
summon wstd:text_display "§l§a简单" 46 22 -22
summon wstd:text_display "§l§e普通" 44 22 -22
summon wstd:text_display "§l§c困难" 42 22 -22
execute if score mapCompletedTimes record matches 1.. run summon wstd:text_display "§l§c速通模式" 41 22 -25

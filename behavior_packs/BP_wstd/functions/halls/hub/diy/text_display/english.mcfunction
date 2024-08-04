# ===== 英文展示文本 =====

# --- 清除展示文本 ---
kill @e[type=wstd:text_display]

# --- 展示内容 ---

summon wstd:text_display "§b§lWelcome to DIY Levels!" -24 10.6 -10
summon wstd:text_display "§bCustomize your own levels and have fun!" -24 10.3 -10
summon wstd:text_display "§bPre-set ancient levels included. Enjoy the game~" -24 10.0 -10
summon wstd:text_display "§bUse \"Next\" to switch between Edit & Game mode." -24 9.7 -10

execute if score diyLevels.isEditMode data matches 0 run summon wstd:text_display "§cNow: Game mode" -24 9.4 -10
execute if score diyLevels.isEditMode data matches 1 run summon wstd:text_display "§cNow: Edit Mode" -24 9.4 -10

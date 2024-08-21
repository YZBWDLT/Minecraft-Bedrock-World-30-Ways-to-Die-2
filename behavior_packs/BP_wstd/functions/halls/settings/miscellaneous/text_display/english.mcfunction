# ===== 英文展示文本 =====

# --- 清除展示文本 ---

kill @e[type=wstd:text_display]

# --- 展示内容 ---

## 第30关对话设定
summon wstd:text_display "§bLevel 30 Dialogue" -100 20.2 49
execute if score level30Dialogue settings matches 1..2 run summon wstd:text_display "§aNow: On" -100 19.9 49
execute if score level30Dialogue settings matches 0 run summon wstd:text_display "§cNow: Off" -100 19.9 49

## 结束特效的烟花设定
summon wstd:text_display "§6Firework Settings" -104 20.2 49
summon wstd:text_display "§6for End Effect" -104 19.9 49

## 记分板显示设定
summon wstd:text_display "§bScoreboard Display" -100 20.2 43
execute if score scoreboardDisplay settings matches 0 run summon wstd:text_display "§bNow: Hided" -100 19.9 43
execute if score scoreboardDisplay settings matches 1 run summon wstd:text_display "§bNow: Partly" -100 19.9 43
execute if score scoreboardDisplay settings matches 2 run summon wstd:text_display "§bNow: Completely" -100 19.9 43

## 地图时间设定
summon wstd:text_display "§bMap Time" -104 20.2 43
execute if score mapTime settings matches 0 run summon wstd:text_display "§bNow: Always Day" -104 19.9 43
execute if score mapTime settings matches 1 run summon wstd:text_display "§bNow: Night in" -104 19.9 43
execute if score mapTime settings matches 1 run summon wstd:text_display "§bFirework Tutorial" -104 19.6 43
execute if score mapTime settings matches 2 run summon wstd:text_display "§bNow: Always Night" -104 19.9 43
execute if score mapTime settings matches 3 run summon wstd:text_display "§bNow: Time Flows" -104 19.9 43

# ===== 中文展示文本 =====

# --- 清除展示文本 ---

kill @e[type=wstd:text_display]

# --- 展示内容 ---

## 第30关对话设定
summon wstd:text_display "§b第30关对话设定" -100 20.2 49
execute if score level30Dialogue settings matches 1..2 run summon wstd:text_display "§a当前：开" -100 19.9 49
execute if score level30Dialogue settings matches 0 run summon wstd:text_display "§c当前：关" -100 19.9 49

## 结束特效的烟花设定
summon wstd:text_display "§6结束特效的烟花设定" -104 20.2 49

## 记分板显示设定
summon wstd:text_display "§b记分板显示设定" -100 20.2 43
execute if score scoreboardDisplay settings matches 0 run summon wstd:text_display "§b当前：隐藏" -100 19.9 43
execute if score scoreboardDisplay settings matches 1 run summon wstd:text_display "§b当前：部分" -100 19.9 43
execute if score scoreboardDisplay settings matches 2 run summon wstd:text_display "§b当前：完整" -100 19.9 43

## 地图时间设定
summon wstd:text_display "§b地图时间设定" -104 20.2 43
execute if score mapTime settings matches 0 run summon wstd:text_display "§b当前：终为白日" -104 19.9 43
execute if score mapTime settings matches 1 run summon wstd:text_display "§b当前：烟花教程黑夜" -104 19.9 43
execute if score mapTime settings matches 2 run summon wstd:text_display "§b当前：终为黑夜" -104 19.9 43
execute if score mapTime settings matches 3 run summon wstd:text_display "§b当前：时间流逝" -104 19.9 43

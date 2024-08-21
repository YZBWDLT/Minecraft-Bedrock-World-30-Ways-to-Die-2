# ===== 中文展示文本 =====

# --- 清除展示文本 ---

kill @e[type=wstd:text_display]

# --- 展示内容 ---

summon wstd:text_display "§b§l欢迎来到进度中心！" -109.0 21.7 18
summon wstd:text_display "§b这里将显示你目前所获得的进度！" -109.0 21.1 18
summon wstd:text_display "§b获取机制与MC Java版类似" -109.0 20.8 18
summon wstd:text_display "§b不是所有的进度都有明显提示" -109.0 20.5 18
summon wstd:text_display "§b有的进度只有暗示" -109.0 20.2 18
summon wstd:text_display "§b进度图例如右图所示" -109.0 19.9 18
execute if score isNetease data matches 0 run summon wstd:text_display "§b加油完成所有进度吧！=w=" -109.0 19.6 18
execute if score isNetease data matches 1 run summon wstd:text_display "§b加油完成所有进度吧！" -109.0 19.6 18

summon wstd:text_display "§6§l4分支" -109.0 21.8 17.2
summon wstd:text_display "§a主线" -109.0 22.1 16
summon wstd:text_display "§d大师" -109.0 22.1 15
summon wstd:text_display "§a彩蛋" -109.0 22.1 14
summon wstd:text_display "§a杂项" -109.0 22.1 13

summon wstd:text_display "§6§l3档次" -109.0 20.8 16.2
summon wstd:text_display "§a普通" -109.0 21.1 15
summon wstd:text_display "§d稀有" -109.0 21.1 14
summon wstd:text_display "§e传奇" -109.0 21.1 13

summon wstd:text_display "§6§l2状态" -109.0 19.8 15.2
summon wstd:text_display "§6已完成" -109.0 20.1 14
summon wstd:text_display "§c未完成" -109.0 20.1 13

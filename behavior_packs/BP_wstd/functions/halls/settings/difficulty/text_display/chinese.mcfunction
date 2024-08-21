# ===== 中文展示文本 =====

# --- 清除展示文本 ---

kill @e[type=wstd:text_display]

# --- 难度设置 ---

summon wstd:text_display "§b难度设置" -98 20.2 49
summon wstd:text_display "§b非常简单" -98 19.9 49

summon wstd:text_display "§b难度设置" -100 20.2 49
summon wstd:text_display "§a简单" -100 19.9 49

summon wstd:text_display "§b难度设置" -102 20.2 49
summon wstd:text_display "§e普通" -102 19.9 49

summon wstd:text_display "§b难度设置" -104 20.2 49
summon wstd:text_display "§c困难" -104 19.9 49

# --- 提示、攻略、跳过单项设置 ---

execute if score isNetease data matches 0 run summon wstd:text_display "§b辅助物品启用设置" -100 20.2 43
execute if score isNetease data matches 1 run summon wstd:text_display "§b协助物品启用设置" -100 20.2 43
execute if score hintEnabled settings matches 1 run summon wstd:text_display "§a提示 | §a当前：开" -100 19.9 43
execute if score hintEnabled settings matches 0 run summon wstd:text_display "§a提示 | §c当前：关" -100 19.9 43

execute if score isNetease data matches 0 run summon wstd:text_display "§b辅助物品启用设置" -102 20.2 43
execute if score isNetease data matches 1 run summon wstd:text_display "§b协助物品启用设置" -102 20.2 43
execute if score strategyEnabled settings matches 1 run summon wstd:text_display "§b攻略 | §a当前：开" -102 19.9 43
execute if score strategyEnabled settings matches 0 run summon wstd:text_display "§b攻略 | §c当前：关" -102 19.9 43

execute if score isNetease data matches 0 run summon wstd:text_display "§b辅助物品启用设置" -104 20.2 43
execute if score isNetease data matches 1 run summon wstd:text_display "§b协助物品启用设置" -104 20.2 43
execute if score skipEnabled settings matches 1 run summon wstd:text_display "§c跳过 | §a当前：开" -104 19.9 43
execute if score skipEnabled settings matches 0 run summon wstd:text_display "§c跳过 | §c当前：关" -104 19.9 43

# --- 速通模式设定 ---
summon wstd:text_display "§b速通模式设定" -109 20.2 46
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§a当前：开" -109 19.9 46
execute if score speedrunMode settings matches 0 run summon wstd:text_display "§c当前：关" -109 19.9 46

# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 停止音乐 ---
execute if score tick time matches 1 run music stop 1

# --- 按钮检测 ---
## 若按钮被按下，则进入到开幕的下一个阶段
execute if block 29 10 27 stone_button ["facing_direction"=5,"button_pressed_bit"=true] run function halls/open/stage_2/start

# --- 语言与网易检测 ---
# 每秒执行1次
execute if score tick time matches 2 run function lib/get_data/client
execute if score tick time matches 2 run function lib/get_data/language

# --- 悬浮文本 ---
execute if score tick time matches 3 if score language data matches 0 run function halls/open/stage_1/text_display/chinese
execute if score tick time matches 3 if score language data matches 1 run function halls/open/stage_1/text_display/english

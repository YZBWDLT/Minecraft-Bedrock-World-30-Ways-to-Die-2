# ===== 开发者模式警告倒计时 =====

# --- 倒计时 ---
# 每秒-1
execute if score tick time matches 0 run scoreboard players remove settingCenter.developerModeWarningCountdown time 1

# --- 当倒计时为0后，停止计时并提醒玩家超时 ---

execute if score settingCenter.developerModeWarningCountdown time matches 0 run tellraw @a {"rawtext":[{"translate":"chat.error.request_out_of_time"}]}
execute if score settingCenter.developerModeWarningCountdown time matches 0 run scoreboard players set settingCenter.developerModeWarningCountdown active 0
execute if score settingCenter.developerModeWarningCountdown time matches 0 run scoreboard players set settingCenter.developerModeWarningCountdown time 0

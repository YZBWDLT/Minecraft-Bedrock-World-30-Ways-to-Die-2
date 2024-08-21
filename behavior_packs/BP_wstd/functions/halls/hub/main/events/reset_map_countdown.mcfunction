# ===== 重置地图倒计时 =====

# --- 倒计时 ---
# 每秒-1
execute if score tick time matches 0 run scoreboard players remove mainHall.resetMapWarningCountdown time 1

# --- 当倒计时为0后，停止计时并提醒玩家超时 ---

execute if score mainHall.resetMapWarningCountdown time matches 0 run tellraw @a {"rawtext":[{"translate":"chat.error.request_out_of_time"}]}
execute if score mainHall.resetMapWarningCountdown time matches 0 run scoreboard players set mainHall.resetMapWarningCountdown active 0
execute if score mainHall.resetMapWarningCountdown time matches 0 run scoreboard players set mainHall.resetMapWarningCountdown time 0

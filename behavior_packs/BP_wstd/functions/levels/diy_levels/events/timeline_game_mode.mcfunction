# ===== 游戏模式时间线 =====

# --- 限时关卡 ---

## 每秒计时，若倒计时达到0则自动退出
execute if score timeline active matches 3 if score timeline time matches 19 run scoreboard players remove remainingTime time 1
execute if score timeline active matches 3 unless score timeline time matches 0..19 run scoreboard players set timeline time 0
execute if score timeline active matches 3 if score remainingTime time matches 0 run function levels/diy_levels/events/time_out

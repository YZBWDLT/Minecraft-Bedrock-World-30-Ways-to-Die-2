# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 时间线 ---
execute if score timeline time matches 300 if score developerMode settings matches 0 run gamemode adventure @a
execute if score timeline time matches 320 if score developerMode settings matches 0 run clear @a
execute if score timeline time matches 340 run difficulty hard
execute if score timeline time matches 360 run time set 6000
execute if score timeline time matches 380 if score developerMode settings matches 0 run scoreboard players set gameruleLock settings 1
execute if score timeline time matches 420 run function levels/tutorial/start

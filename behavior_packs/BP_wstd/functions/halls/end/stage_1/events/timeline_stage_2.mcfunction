# ===== 第二阶段时间线 =====

# --- 旋转视角 ---
execute as @e[name=facingPosition] at @s run tp @s ~~~ ~0.3
execute as @e[name=facingPosition] at @s positioned ^^3^4 run tp @e[name=playerPosition] ~~~ facing @s

# --- 时间线主体 ---

## [560] 回到大厅
execute if score timeline time matches 560 run function halls/end/stage_1/quit

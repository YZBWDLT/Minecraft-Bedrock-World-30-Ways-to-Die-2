# ===== 开启第二阶段 =====

# --- 面向位置标记实体与玩家位置标记实体准备 ---
tp @e[name=facingPosition] -46 9 27 facing 21 9 27
execute as @e[name=facingPosition] at @s positioned ^^4^4 run tp @e[name=playerPosition] ~~~ facing @s

# --- 启用二阶段的时间线和剧情线 ---
function lib/modify_states/timeline/enable_pass_2
function lib/modify_states/dialogue/enable_lock_7

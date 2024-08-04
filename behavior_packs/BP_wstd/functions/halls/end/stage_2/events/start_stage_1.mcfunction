# ===== 开始第一阶段 =====

# --- 面向位置标记实体与玩家位置标记实体准备 ---
execute as @e[type=wstd:creator] at @s positioned ~~-3~ run tp @e[name=facingPosition] ~~~
tp @e[name=playerPosition] -41 9 27

# --- 状态（时间线&剧情线） ---
function lib/modify_states/timeline/enable_pass_1
function lib/modify_states/dialogue/enable_lock_6

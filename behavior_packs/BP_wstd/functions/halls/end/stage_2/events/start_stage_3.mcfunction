# ===== 第三阶段开始 =====

# --- 召唤作者实体 ---
summon wstd:creator -46 9 27 270 0 become_lt "YZBWDLT"

# --- 面向位置标记实体与玩家位置标记实体准备 ---
execute as @e[type=wstd:creator,name="YZBWDLT",c=1] at @s run tp @e[name=facingPosition] ~~~
tp @e[name=playerPosition] -41 9 27

# --- 状态（时间线&剧情线） ---
function lib/modify_states/timeline/enable_pass_3
function lib/modify_states/dialogue/enable_lock_8

# --- 设置时间为白天 ---
time set 6000

# --- 播放音乐 ---
function lib/modify_states/music/end

# --- 清除掉烟花发射器 ---
execute as @e[name=fireworkLauncher] at @s run fill ~~~~~2~ air
kill @e[name=fireworkLauncher]

# --- 清除玩家的返回物品 ---
clear @a wstd:back

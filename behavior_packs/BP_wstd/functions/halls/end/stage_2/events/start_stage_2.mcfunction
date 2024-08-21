# ===== 第二阶段开始 =====

# --- 面向位置标记实体与玩家位置标记实体准备 ---
execute as @e[type=wstd:creator] at @s positioned ~~-3~ run tp @e[name=facingPosition] ~~~
tp @e[name=playerPosition] -41 9 27

# --- 状态（时间线&剧情线） ---
function lib/modify_states/timeline/enable_pass_2
function lib/modify_states/dialogue/enable_2

# --- 隐藏记分板 ---
scoreboard objectives setdisplay sidebar

# --- 显示不要退出游戏的提示 ---
titleraw @a actionbar {"rawtext":[{"translate":"actionbar.end_1"}]}

# --- 传送玩家 ---
tp @a -8 29 27
tp @e[name=playerPosition] -38 9 27
tp @e[name=facingPosition] 38 10 27

# --- 播放音乐 ---
function lib/modify_states/music/firework_show

# --- 设置标题时间 ---
titleraw @a times 0 200 0

# --- 设置隐身 ---
effect @a invisibility 3600 0 true

# ===== 时间线控制器 =====
# 该控制器将按照不同的data.level值执行不同的时间线效果。
# <!> 注意：该函数仅当时间线启用后执行

# --- 计时 ---

# 1-5：启用并时间流逝
execute if score timeline active matches 1..5 run scoreboard players add timeline time 1

# --- 时间线函数文件列表 ---
function lib/function_lists/timeline

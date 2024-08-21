# ===== 剧情线控制器 =====
# 该控制器将按照不同的data.level值执行不同的时间线效果。
# <!> 注意：该函数仅当剧情线启用后执行

# --- 计时 ---
# 1-5：启用并时间流逝，6-10：启用、时间流逝并锁定视角
execute if score dialogue active matches 1..10 run scoreboard players add dialogue time 1

# --- 锁定相机视角对话 ---
# 当active.dialogue为6-10的启用状态，锁定视角
execute if score dialogue active matches 6..10 as @a at @e[name=playerPosition] facing entity @e[name=facingPosition] feet run tp @s ~~~~~

# --- 需要启用的剧情线文件 ---
function lib/function_lists/dialogue

# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 粒子设定 ---
# 每秒执行1次
execute if score tick time matches 0 run function halls/settings/question_and_answer/events/particles

# --- 玩家进入检测 ---
# 用于判断玩家是否走进粒子光束中
function halls/settings/question_and_answer/events/enter_test

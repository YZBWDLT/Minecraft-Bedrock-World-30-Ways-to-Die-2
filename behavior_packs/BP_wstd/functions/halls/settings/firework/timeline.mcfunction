# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 锁定抗性提升 ---
# 防止玩家受到伤害
execute if score tick time matches 5 run effect @a resistance 30 5 true

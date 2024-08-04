# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 给予骷髅防火 ---

## 每秒给予骷髅一次防火
execute if score tick time matches 1 run effect @e[type=skeleton] fire_resistance 10 0 true

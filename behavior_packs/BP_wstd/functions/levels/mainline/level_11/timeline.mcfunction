# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 给予僵尸防火 ---

## 每秒给予僵尸一次防火
execute if score tick time matches 1 run effect @e[type=zombie,x=52,y=21,z=56,dx=8,dy=4,dz=8] fire_resistance 10 0 true

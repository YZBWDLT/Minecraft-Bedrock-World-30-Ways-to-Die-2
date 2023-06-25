# 烟花教程

# ===== 设置关卡ID =====
scoreboard players set @e[name=level] backend -8

# ===== 启动大厅级关卡启动函数 =====
function halls/start_hall_level

# ===== 传送玩家到大厅 =====
tp @a 0 102 0 facing 10 102 0

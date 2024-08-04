# ===== 粒子效果 =====
# 该命令需每秒执行一次

# --- 权限等级设置 ---
particle wstd:light_blue -98 18 49

# --- 开发者模式 ---

## 关闭状态下 | 绿色粒子
execute if score developerMode settings matches 0 run particle wstd:green -98 18 43
## 开启状态下 | 红色粒子
execute if score developerMode settings matches 1 run particle wstd:red -98 18 43

# --- 重置地图 ---

particle wstd:red -108 18 43

# --- 解锁关卡 ---
# 仅限开发者模式启用后出现

execute if score developerMode settings matches 1 run particle wstd:light_blue -100 18 43
execute if score developerMode settings matches 1 run particle wstd:light_blue -102 18 43
execute if score developerMode settings matches 1 run particle wstd:light_blue -104 18 43

# --- 重置地图记录 ---
# 仅限开发者模式启用后出现

execute if score developerMode settings matches 1 run particle wstd:red -106 18 43

# --- 适配模式设置 ---
# 仅限开发者模式启用后出现

execute if score developerMode settings matches 1 run particle wstd:light_blue -108 18 49

# --- 更改游戏模式 ---
# 仅限权限等级大于等于1时出现

execute if score oplevel settings matches 1.. run particle wstd:light_blue -102 18 49
execute if score oplevel settings matches 1.. run particle wstd:light_blue -104 18 49

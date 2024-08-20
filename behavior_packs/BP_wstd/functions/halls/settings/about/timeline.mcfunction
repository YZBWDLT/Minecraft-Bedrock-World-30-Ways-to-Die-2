# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 地图玩法时间线 ---
# 当时间线状态为 1 时执行
execute if score timeline active matches 1 run function halls/settings/about/events/timeline_how_to_play

# --- 默认时间线 ---
# 当时间线状态为 6 时执行

## 粒子设定 | 每秒执行1次
execute if score timeline active matches 6 if score tick time matches 0 run function halls/settings/about/events/particles

## 玩家进入检测 | 用于判断玩家是否走进粒子光束中
execute if score timeline active matches 6 run function halls/settings/about/events/enter_test

# --- 常见问题时间线 ---
# 当时间线状态为 7 时执行

## 粒子设定 | 每秒执行1次
execute if score timeline active matches 7 if score tick time matches 0 run function halls/settings/about/events/particles_help

## 玩家进入检测 | 用于判断玩家是否走进粒子光束中
execute if score timeline active matches 7 run function halls/settings/about/events/enter_test_help

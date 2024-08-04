# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 粒子设定 ---
# 每秒执行1次
execute if score tick time matches 0 run function halls/settings/advanced/events/particles

# --- 玩家进入检测 ---
# 用于判断玩家是否走进粒子光束中
function halls/settings/advanced/events/enter_test

# --- 重置地图警告 ---
# 当重置警告倒计时启用（active.settingCenter.resetMapWarningCountdown = 1）后执行
execute if score settingCenter.resetMapWarningCountdown active matches 1 run function halls/settings/advanced/events/reset_map_countdown

# --- 开发者模式警告 ---
# 当开发者模式警告倒计时启用（active.settingCenter.developerModeWarningCountdown = 1）后执行
execute if score settingCenter.developerModeWarningCountdown active matches 1 run function halls/settings/advanced/events/developer_mode_countdown

# --- 重置记录警告 ---
# 当重置记录倒计时启用（active.settingCenter.resetRecordWarningCountdown = 1）后执行
execute if score settingCenter.resetRecordWarningCountdown active matches 1 run function halls/settings/advanced/events/reset_record_countdown

# --- 展示框 ---

## 未开启开发者模式时，隐藏解锁三类关卡和重置记录的展示框
execute if score developerMode settings matches 0 if score tick time matches 1 run fill -100 21 43 -106 21 43 air
## 未开启开发者模式时，隐藏适配模式设置的展示框
execute if score developerMode settings matches 0 if score tick time matches 1 run setblock -108 21 49 air
## 权限等级不足时，隐藏更改游戏模式的展示框
execute unless score oplevel settings matches 1..2 if score tick time matches 1 run fill -102 21 49 -104 21 49 air
## 开启开发者模式时，展示解锁三类关卡和重置记录的展示框
execute if score developerMode settings matches 1 if score tick time matches 2 run clone -100 12 43 -106 12 43 -106 21 43
## 开启开发者模式时，展示适配模式设置的展示框
execute if score developerMode settings matches 1 if score tick time matches 2 run clone -108 12 49 -108 12 49 -108 21 49
## 权限等级适合时，展示更改游戏模式的展示框
execute if score oplevel settings matches 1..2 if score tick time matches 2 run clone -102 12 49 -104 12 49 -104 21 49

# ===== 开始大厅 =====
# 去除了传送、标题、通用函数等，仅保留ID、展示文本和刷新记分板的基础版开始大厅函数
# 这是为了完成关卡后的一些需要而特意设定的

# --- 基本 ---

## ID 
scoreboard players set level data -4

## 通用函数
function lib/modify_data/hall_start

## 状态（时间线）
function lib/modify_states/timeline/enable_6

## 显示展示文本
execute if score language settings matches 0 run function halls/settings/advanced/text_display/chinese
execute if score language settings matches 1 run function halls/settings/advanced/text_display/english

# --- 特殊内容 ---

## 复制展示框
clone -98 12 49 -109 12 43 -109 21 43
## 特殊分值检测
scoreboard players set settingCenter.resetMapWarningCountdown time 10
scoreboard players set settingCenter.resetMapWarningCountdown active 0
scoreboard players set settingCenter.developerModeWarningCountdown time 10
scoreboard players set settingCenter.developerModeWarningCountdown active 0
scoreboard players set settingCenter.resetRecordWarningCountdown time 10
scoreboard players set settingCenter.resetRecordWarningCountdown active 0

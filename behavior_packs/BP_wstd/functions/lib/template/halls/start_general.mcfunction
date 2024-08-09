# ===== 开始大厅 =====
# 去除了传送、标题、通用函数等，仅保留ID、展示文本和刷新记分板的基础版开始大厅函数
# 这是为了完成关卡后的一些需要而特意设定的

# --- 基本 ---

## ID 
## (设置关卡的ID，举例：scoreboard players set level data 0

## 通用函数
function lib/modify_data/hall_start

## 状态（时间线）
## (是否启用时间线？举例：function lib/modify_states/timeline/enable_6

## 显示展示文本
## (是否启用中文展示文本？举例：execute if score language data matches 0 run function halls/.../text_display/chinese
## (是否启用英文展示文本？举例：execute if score language data matches 1 run function halls/.../text_display/english

## 刷新记分板
## (设置要刷新的记分板，举例：function lib/scoreboard/mainline_levels

# --- 特殊内容 ---

## 特殊分值检测
## (是否启用关卡独有的功能检测？这可以用于时间线中。举例：scoreboard players set level7.enteredNether data 0

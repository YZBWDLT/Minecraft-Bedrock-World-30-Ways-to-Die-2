# ===== 开始大厅 =====
# 去除了传送、标题、通用函数等，仅保留ID、展示文本和刷新记分板的基础版开始大厅函数
# 这是为了完成关卡后的一些需要而特意设定的

# --- 基本 ---

## ID 
scoreboard players set level data -12

## 通用函数
function lib/modify_data/hall_start

## 状态（时间线）
function lib/modify_states/timeline/disable

## 显示展示文本
execute if score language settings matches 0 run function halls/record/advancement/text_display/chinese
execute if score language settings matches 1 run function halls/record/advancement/text_display/english

## 刷新记分板
function lib/scoreboard/advancement

# --- 特殊内容 ---

## 加载展示框
execute if score language settings matches 0 run function halls/record/advancement/events/load_data_chinese
execute if score language settings matches 1 run function halls/record/advancement/events/load_data_english

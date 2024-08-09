# ===== 开始大厅 =====
# 去除了传送、标题、通用函数等，仅保留ID、展示文本和刷新记分板的基础版开始大厅函数
# 这是为了完成关卡后的一些需要而特意设定的

# --- 基本 ---

## ID 
scoreboard players set level data -14

## 通用函数
function lib/modify_data/hall_start

## 状态（时间线）
function lib/modify_states/timeline/enable_6

# --- 特殊内容 ---

## 特殊分值检测
scoreboard players set fireworkTutorial.step data 1

## 显示展示文本 | 因必须存在独有变量才能显示文本，故需写在分值检测后面
execute if score language data matches 0 run function halls/record/firework/text_display/chinese
execute if score language data matches 1 run function halls/record/firework/text_display/english

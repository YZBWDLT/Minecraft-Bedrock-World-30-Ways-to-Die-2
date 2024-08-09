# ===== 开始大厅 =====
# 去除了传送、标题、通用函数等，仅保留ID、展示文本和刷新记分板的基础版开始大厅函数
# 这是为了完成关卡后的一些需要而特意设定的

# --- 基本 ---

## ID 
scoreboard players set level data -5

## 通用函数
function lib/modify_data/hall_start

## 状态（时间线）
function lib/modify_states/timeline/enable_6

## 显示展示文本
execute if score language data matches 0 run function halls/settings/firework/text_display/chinese
execute if score language data matches 1 run function halls/settings/firework/text_display/english

## 重置关卡房间，并加载烟花发射器
structure load firework:settings 5 20 -30
structure load firework_dispenser 10 22 -25

# --- 特殊内容 ---

## 如果地图时间设置为了“锁定黑夜”或“仅烟花教程时黑夜”，则放置海晶灯照明
execute if score mapTime settings matches 1..2 run setblock 7 20 -28 sea_lantern
execute if score mapTime settings matches 1..2 run setblock 13 20 -28 sea_lantern
execute if score mapTime settings matches 1..2 run setblock 13 20 -22 sea_lantern
execute if score mapTime settings matches 1..2 run setblock 7 20 -22 sea_lantern

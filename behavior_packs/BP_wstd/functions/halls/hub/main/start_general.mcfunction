# ===== 开始大厅 =====
# 去除了传送、标题、通用函数等，仅保留ID、展示文本和刷新记分板的基础版开始大厅函数
# 这是为了完成关卡后的一些需要而特意设定的

# --- 基本 ---

## ID 
scoreboard players set level data 0

## 通用函数
function lib/modify_data/hall_start

## 状态（时间线）
function lib/modify_states/timeline/enable_6
function lib/modify_states/dialogue/disable

## 显示展示文本
execute if score language data matches 0 run function halls/hub/main/text_display/chinese
execute if score language data matches 1 run function halls/hub/main/text_display/english

## 刷新记分板
function lib/scoreboard/mainline_levels

# --- 特殊内容 ---

## 召唤作者实体
execute if score progress.mapStage record matches 2 run function halls/hub/main/events/summon_creator
## 特殊分值检测
scoreboard players set mainHall.actionbarTitleSecond time 0
scoreboard players set mainHall.actionbarTitleRandom data 0
scoreboard players set mainHall.resetMapWarningCountdown active 0
scoreboard players set mainHall.resetMapWarningCountdown time 10
## 给予玩家物品
function halls/hub/main/events/item_supplier

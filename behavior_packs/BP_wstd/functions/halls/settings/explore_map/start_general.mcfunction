# ===== 开始大厅 =====
# 去除了传送、标题、通用函数等，仅保留ID、展示文本和刷新记分板的基础版开始大厅函数
# 这是为了完成关卡后的一些需要而特意设定的

# --- 基本 ---

## ID 
scoreboard players set level data -8

## 通用函数
function lib/modify_data/hall_start

## 状态（时间线）
function lib/modify_states/timeline/enable_6

# --- 玩家 ---

## 调整为旁观模式
gamemode spectator @a

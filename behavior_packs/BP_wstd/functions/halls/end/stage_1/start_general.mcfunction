# ===== 开始大厅 =====
# 去除了传送、标题、通用函数等，仅保留ID、展示文本和刷新记分板的基础版开始大厅函数
# 这是为了完成关卡后的一些需要而特意设定的

# --- 基本 ---

## ID 
scoreboard players set level data -13

## 通用函数
function lib/modify_data/hall_start

## 状态（时间线）
function lib/modify_states/timeline/enable_pass_1
function lib/modify_states/dialogue/enable_lock_6

# --- 特殊内容 ---

## 阻止音效
function lib/modify_states/sound/reset

## 防止玩家跑开
fill -31 0 29 -31 0 25 border_block
fill -31 0 25 -39 0 25 border_block
fill -31 0 29 -39 0 29 border_block

## 指定锁定视角
tp @e[name=playerPosition] -35 9 27
tp @e[name=facingPosition] -39 9 27

## 恢复门（让门再炸一次 嘿嘿）
function lib/modify_data/gates/end_room

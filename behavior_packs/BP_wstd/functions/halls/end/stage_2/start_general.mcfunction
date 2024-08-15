# ===== 开始大厅 =====
# 去除了传送、标题、通用函数等，仅保留ID、展示文本和刷新记分板的基础版开始大厅函数
# 这是为了完成关卡后的一些需要而特意设定的

# --- 基本 ---

## ID 
scoreboard players set level data -13

## 通用函数
function lib/modify_data/hall_start

## 状态（时间线）
function lib/modify_states/timeline/enable_6

# --- 特殊内容 ---

## 阻止音效
function lib/modify_states/sound/reset

## 重新读取大厅logo
structure load system:logo 47 6 21

## 生成作者
execute if score language data matches 0 run summon wstd:creator -46 9 27 270 0 become_lt "一只卑微的量筒"
execute if score language data matches 1 run summon wstd:creator -46 9 27 270 0 become_lt "YZBWDLT"
tellraw @a { "rawtext": [ { "translate": "chat.author_joined_game" } ] }

## 复原信标地板
fill -44 8 29 -48 8 25 iron_block

## 准备烟花火箭的位置和发射顺序
function halls/end/stage_2/events/firework_ready

## 特殊分值检测
scoreboard players set endStage2.fireworkTimer time 0
scoreboard players set endStage2.fireworkLauncher data 1

# ===== 开始大厅 =====
# 去除了传送、标题、通用函数等，仅保留ID、展示文本和刷新记分板的基础版开始大厅函数
# 这是为了完成关卡后的一些需要而特意设定的

# --- 基本 ---

## ID 
scoreboard players set level data -19

## 通用函数
function lib/modify_data/hall_start

## 状态（时间线）
function lib/modify_states/timeline/enable_pass_1
function lib/modify_states/dialogue/enable_1

# --- 特殊内容 ---

## 按下按钮的提示
function lib/modify_states/sound/random_orb_2

## 清除按钮与掉落物
fill 28 9 27 29 12 27 air [] destroy
kill @e[type=item]

## 设置天气
weather clear

## 设置标题时间
titleraw @a times 10 40 10

# ===== 开始大厅 =====
# 去除了传送、标题、通用函数等，仅保留ID、展示文本和刷新记分板的基础版开始大厅函数
# 这是为了完成关卡后的一些需要而特意设定的

# --- 基本 ---

## ID 
scoreboard players set level data -17

## 通用函数
function lib/modify_data/hall_start

## 状态（时间线）
function lib/modify_states/timeline/disable

# --- 特殊内容 ---

## 显示游戏规则
execute as @a run function settings/map_rule

## 给予玩家下一步
replaceitem entity @a slot.hotbar 4 wstd:next_step 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

## 清空房间
fill 41 21 -21 49 25 -29 air

## 播放音效
function lib/modify_states/sound/random_levelup_2

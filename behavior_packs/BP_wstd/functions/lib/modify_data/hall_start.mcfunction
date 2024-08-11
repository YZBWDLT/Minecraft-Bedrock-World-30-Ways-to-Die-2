# ===== 所有大厅开始时的通用函数 =====

# --- 常规 ---

## 状态
### 时间线 | 默认启用 | <!>在执行该通用函数之后必须设定特定大厅的时间线
function lib/modify_states/timeline/enable_6

# --- 物品 ---

## 清除物品 | 非开发者模式清除所有物品，开发者模式仅清除辅助功能物品
execute if score developerMode settings matches 0 run clear @a
execute if score developerMode settings matches 1 as @a run function developer/clear_items

# --- 玩家 ---

## 设置游戏模式 | 仅在权限等级为0时执行
execute if score oplevel settings matches 0 run gamemode adventure @a
## 清除药效，恢复玩家血量 | 清除药效仅在未处于开发者模式下执行
execute if score developerMode settings matches 0 run effect @a clear
effect @a instant_health 1 255 true
## 标题时长 | <!>在执行该通用函数之后才能设定标题
titleraw @a times 0 60 0
## 音效提醒
function lib/modify_states/sound/random_orb_2
## 提醒玩家开发者模式下部分命令执行失败 | 仅在处于开发者模式下执行
execute if score developerMode settings matches 1 run tellraw @a {"rawtext":[{"translate":"chat.error.developer_mode.run_command_failed"}]}

# --- 实体 ---

## 清除多余实体
kill @e[type=!player,family=!marker,type=!ender_dragon]

# --- 世界 ---

## 关卡游戏规则设定 | 针对特殊关卡，执行一次关卡游戏规则的设定
function lib/function_lists/gamerule

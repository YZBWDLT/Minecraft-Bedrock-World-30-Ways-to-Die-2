# ===== 所有关卡开始时的通用函数 =====

# --- 常规 ---

## 状态
### 时间线 | 普通关卡禁用。自定义关卡将启用，因本函数将会在命令方块执行 | <!>在执行该通用函数之后必须设定特定关卡的时间线
execute unless score level data matches 51..60 run function lib/modify_states/timeline/disable
execute if score level data matches 51..60 if score timeline active matches 0 run function lib/modify_states/timeline/enable_6
### 关卡完成延迟 | 若玩家设置了始终启用关卡完成延迟，则进行相应的禁用/启用操作 | <!>在执行该通用函数之前必须先设定特定关卡的关卡完成延迟
execute if score levelCompleteDelay settings matches 0 run function lib/modify_states/level_complete_delay/disable
execute if score levelCompleteDelay settings matches 6..10 run function lib/modify_states/level_complete_delay/enable

## 恢复辅助功能使用状态
scoreboard players set hintUsed data 0
scoreboard players set strategyUsed data 0
scoreboard players set skipUsed data 0

## 停止关卡完成标记
scoreboard players set levelCompleted data 0

# --- 物品 ---

## 清除物品 | 非开发者模式清除所有物品，开发者模式仅清除辅助功能物品
execute if score developerMode settings matches 0 run clear @a
execute if score developerMode settings matches 1 as @a run function developer/clear_items
## 给予玩家辅助物品（重置、退出） | <!>在执行该通用函数之前必须先设定特定关卡的关卡ID
execute as @a run function lib/modify_data/item/supplier

# --- 玩家 ---

## 设置游戏模式 | 仅在未处于开发者状态下执行
execute if score developerMode settings matches 0 run gamemode adventure @a
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

## 清除多余实体 | 禁止自定义关卡在加载后清理实体
execute unless score level data matches 51..60 run kill @e[type=!player,family=!marker,type=!ender_dragon]

# --- 世界 ---

## 关卡游戏规则设定 | 针对特殊关卡，执行一次关卡游戏规则的设定
function lib/function_lists/gamerule

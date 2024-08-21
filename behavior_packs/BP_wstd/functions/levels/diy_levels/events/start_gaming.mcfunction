# ===== 游戏模式，准备开始游戏 =====
# 用于地图内的命令方块系统，基于 lib/modify_data/level/start 改动而来
# 先利用命令方块执行本函数，然后再执行_2，完成初始化

# --- 常规 ---

## 状态
### 时间线
execute if score timeline active matches 0 run function lib/modify_states/timeline/enable_6
### 关卡完成延迟 | 若玩家设置了始终启用关卡完成延迟，则进行相应的禁用/启用操作
execute if score levelCompleteDelay settings matches 0 run function lib/modify_states/level_complete_delay/disable
execute if score levelCompleteDelay settings matches 6..10 run function lib/modify_states/level_complete_delay/enable

## 停止关卡完成标记
scoreboard players set levelCompleted data 0

# --- 物品 ---

## 清除物品 | 非开发者模式清除所有物品，开发者模式仅清除辅助功能物品
execute if score developerMode settings matches 0 run clear @a
execute if score developerMode settings matches 1 as @a run function developer/clear_items

## 给予玩家辅助物品
give @a[hasitem={item=wstd:reset,quantity=0}] wstd:reset 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
give @a[hasitem={item=wstd:quit,quantity=0}] wstd:quit 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
execute as @a run function lib/modify_data/item/aux_functions
execute as @a run function lib/modify_data/item/aux_functions_hard

# --- 玩家 ---

## [仅非开发者模式] 设置游戏模式
execute if score developerMode settings matches 0 run gamemode adventure @a

## [仅非开发者模式] 清除药效，恢复玩家血量
execute if score developerMode settings matches 0 run effect @a clear
effect @a instant_health 1 255 true

## 标题时长
titleraw @a times 0 60 0

## 音效提醒
function lib/modify_states/sound/random_orb_2

## [仅开发者模式] 提醒玩家开发者模式下部分命令执行失败
execute if score developerMode settings matches 1 run tellraw @a {"rawtext":[{"translate":"chat.error.developer_mode.run_command_failed"}]}

# --- 世界 ---

## 关卡游戏规则设定 | 针对特殊关卡，执行一次关卡游戏规则的设定
function lib/function_lists/gamerule

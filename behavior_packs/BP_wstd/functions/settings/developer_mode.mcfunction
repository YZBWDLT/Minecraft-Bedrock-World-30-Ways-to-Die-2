# ===== 启用/禁用开发者模式 =====

# --- 基本 ---
function lib/modify_states/sound/random_pop

# --- 调整开发者模式的数值 ---
scoreboard players add developerMode settings 1
execute unless score developerMode settings matches 0..1 run scoreboard players set developerMode settings 0

# --- 当开发者模式关闭后执行的内容 ---

## 提示
execute if score developerMode settings matches 0 run tellraw @a { "rawtext": [ { "translate": "functions.settings.developer_mode.disabled" } ] }
## 清除开发者物品
execute if score developerMode settings matches 0 run clear @a wstd:change_to_creative
execute if score developerMode settings matches 0 run clear @a wstd:change_to_survival
execute if score developerMode settings matches 0 run clear @a wstd:change_to_adventure
execute if score developerMode settings matches 0 run clear @a wstd:change_to_spectator
## 重置gamerule
execute if score developerMode settings matches 0 run function lib/modify_data/init/gamerule
## 重置出生点
execute if score developerMode settings matches 0 run setworldspawn 28 9 27

# --- 当开发者模式开启后执行的内容 ---

## 提示
execute if score developerMode settings matches 1 run tellraw @a { "rawtext": [ { "translate": "functions.settings.developer_mode.enabled" } ] }
## 将玩家更改为创造模式
execute if score developerMode settings matches 1 run gamemode creative @a
## 使用开发者模式专有的gamerule
execute if score developerMode settings matches 1 run function developer/gamerule
## 重置出生点
execute if score developerMode settings matches 1 run setworldspawn 7 5 7
## 设置权限等级
execute if score developerMode settings matches 1 run scoreboard players set oplevel settings 2

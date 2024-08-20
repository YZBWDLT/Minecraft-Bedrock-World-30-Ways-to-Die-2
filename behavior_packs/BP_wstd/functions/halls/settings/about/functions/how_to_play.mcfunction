# ===== 地图玩法 =====

# --- 设定关卡ID ---

## 如果是从大厅来，则做标记，待流程结束或返回后将玩家传送回大厅
execute if score level data matches 0 run scoreboard players set settingCenter.enteredFromMainhall data 1
execute if score level data matches 0 run scoreboard players set level data -9

# --- 物品设定 ---

function lib/modify_data/item/clear
give @a[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
give @a[hasitem={item=wstd:play_music,quantity=0}] wstd:play_music 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

# --- 清除多余实体 ---
kill @e[type=!player,family=!marker,type=!ender_dragon]

# --- 启用时间线和剧情线 ---
function lib/modify_states/timeline/enable_pass_1
function lib/modify_states/dialogue/enable_lock_6

# --- 初始化玩家位置和视角 ---
tp @e[name=playerPosition] 17 9 27
execute as @e[name=playerPosition] at @s positioned ~-4~~ run tp @e[name=facingPosition] ~~~

# --- 设置标题时间 ---
title @a times 0 160 0

# --- 特殊分值设定 ---

## 设定当前正处于如何游玩的动画中
scoreboard players set settingCenter.howToPlayAnimation data 1

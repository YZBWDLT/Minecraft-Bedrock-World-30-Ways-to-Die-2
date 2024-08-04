# ===== 重置地图记录 =====

# --- 当玩家进入时，倒计时处于激活状态，重置地图记录 ---

## 重置地图记录
execute if score settingCenter.resetRecordWarningCountdown active matches 1 run function lib/modify_data/init/record
execute if score settingCenter.resetRecordWarningCountdown active matches 1 run function lib/modify_states/sound/random_pop
## 更改状态为0（间接的，先切换为2，再改为0）
execute if score settingCenter.resetRecordWarningCountdown active matches 1 run scoreboard players add settingCenter.resetRecordWarningCountdown active 1

# --- 当玩家进入时，倒计时未处于激活状态，激活之 ---

## 警告玩家（聊天栏&音效）
execute if score settingCenter.resetRecordWarningCountdown active matches 0 run tellraw @s {"rawtext":[{"translate":"chat.settings.reset_record.warning"}]}
execute if score settingCenter.resetRecordWarningCountdown active matches 0 run function lib/modify_states/sound/random_anvil_land
## 启用倒计时
execute if score settingCenter.resetRecordWarningCountdown active matches 0 run scoreboard players set settingCenter.resetRecordWarningCountdown time 10
execute if score settingCenter.resetRecordWarningCountdown active matches 0 run scoreboard players set settingCenter.resetRecordWarningCountdown active 1

execute if score settingCenter.resetRecordWarningCountdown active matches !0..1 run scoreboard players set settingCenter.resetRecordWarningCountdown active 0

# --- 将玩家传送出检测区 ---
tp @s -106 19 46

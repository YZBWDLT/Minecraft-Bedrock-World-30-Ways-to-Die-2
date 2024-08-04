# ===== 重置地图 =====

# --- 当玩家进入时，倒计时处于激活状态，重开地图 ---

execute if score settingCenter.resetMapWarningCountdown active matches 1 run function halls/open/stage_1/start

# --- 当玩家进入时，倒计时未处于激活状态，激活之 ---

## 将玩家传送出检测区 | 因为不能在重置之后还传送，重置本身包含传送操作
execute if score settingCenter.resetMapWarningCountdown active matches 0 run tp @s -108 19 46
## 警告玩家（聊天栏&音效）
execute if score settingCenter.resetMapWarningCountdown active matches 0 run tellraw @s {"rawtext":[{"translate":"chat.settings.reset_map.warning"}]}
execute if score settingCenter.resetMapWarningCountdown active matches 0 run function lib/modify_states/sound/random_anvil_land
## 启用倒计时
execute if score settingCenter.resetMapWarningCountdown active matches 0 run scoreboard players set settingCenter.resetMapWarningCountdown time 10
execute if score settingCenter.resetMapWarningCountdown active matches 0 run scoreboard players set settingCenter.resetMapWarningCountdown active 1

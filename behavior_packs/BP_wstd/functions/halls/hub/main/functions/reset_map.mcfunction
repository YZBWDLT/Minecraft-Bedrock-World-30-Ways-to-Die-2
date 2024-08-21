# ===== 重置地图 =====

# --- 当玩家进入时，倒计时处于激活状态，重开地图 ---

execute if score mainHall.resetMapWarningCountdown active matches 1 run function halls/open/stage_1/start

# --- 当玩家进入时，倒计时未处于激活状态，激活之 ---

## 将玩家传送出去
execute if score mainHall.resetMapWarningCountdown active matches 0 run tp @s -43 9 27
## 警告玩家（聊天栏&音效）
execute if score mainHall.resetMapWarningCountdown active matches 0 run tellraw @s {"rawtext":[{"translate":"chat.settings.reset_map.warning"}]}
execute if score mainHall.resetMapWarningCountdown active matches 0 run function lib/modify_states/sound/random_anvil_land
## 启用倒计时
execute if score mainHall.resetMapWarningCountdown active matches 0 run scoreboard players set mainHall.resetMapWarningCountdown time 10
execute if score mainHall.resetMapWarningCountdown active matches 0 run scoreboard players set mainHall.resetMapWarningCountdown active 1

# ===== 开发者模式 =====

# --- 调用设置 ---

## 当开发者模式启用且倒计时未激活时进入 | 激活倒计时
### 警告玩家（聊天栏&音效）
execute if score settingCenter.developerModeWarningCountdown active matches 0 run tellraw @s {"rawtext":[{"translate":"chat.settings.developer_mode.warning"}]}
execute if score settingCenter.developerModeWarningCountdown active matches 0 run function lib/modify_states/sound/random_anvil_land
### 启用倒计时
execute if score settingCenter.developerModeWarningCountdown active matches 0 run scoreboard players set settingCenter.developerModeWarningCountdown time 10

## 当开发者模式未启用但倒计时激活时进入，或开发者模式启用后 | 执行设置
execute if score settingCenter.developerModeWarningCountdown active matches 1..2 run function settings/developer_mode

## 更改状态
scoreboard players add settingCenter.developerModeWarningCountdown active 1
execute unless score settingCenter.developerModeWarningCountdown active matches 0..2 run scoreboard players set settingCenter.developerModeWarningCountdown active 0

# --- 重新处理展示文本 ---
execute if score language data matches 0 run function halls/settings/advanced/text_display/chinese
execute if score language data matches 1 run function halls/settings/advanced/text_display/english

# --- 将玩家传送出检测区 ---
tp @s -98 19 46

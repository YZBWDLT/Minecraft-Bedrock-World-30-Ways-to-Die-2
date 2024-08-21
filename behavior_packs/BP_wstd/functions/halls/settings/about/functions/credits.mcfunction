# ===== 制作人 =====

# --- 调用设置 ---
function settings/credits

# --- 将玩家传送出检测区 ---
tp @s -102 19 46

# --- 记录玩家进入过检测区 ---
scoreboard players set settingCenter.creditsViewed data 1

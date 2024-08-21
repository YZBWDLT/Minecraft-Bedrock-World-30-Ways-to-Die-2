# ===== 重置发射器 =====
# 当玩家使用“重置关卡”时执行

# --- 重置发射器 ---

clone 8 5 7 8 5 7 10 22 -25

# --- 进行提示 ---

## 聊天栏
tellraw @s {"rawtext":[{"translate":"chat.settings.firework_settings.reset"}]}
## 音效
function lib/modify_states/sound/random_orb_1

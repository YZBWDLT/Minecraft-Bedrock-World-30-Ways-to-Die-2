# ===== 使用攻略 =====

# --- 常规 ---

## 剧情线&时间线
function lib/modify_states/dialogue/enable_4
function lib/modify_states/timeline/enable_pass_4

# --- 攻略 ---
execute as @a run tellraw @s {"rawtext":[{"translate":"chat.strategy.tutorial_level"}]}

# --- 特殊内容 ---

## 清除玩家的跳过
clear @a wstd:strategy

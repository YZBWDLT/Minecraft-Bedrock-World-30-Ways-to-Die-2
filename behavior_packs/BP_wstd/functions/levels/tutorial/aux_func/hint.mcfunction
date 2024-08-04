# ===== 使用提示 =====

# --- 常规 ---

## 剧情线&时间线
function lib/modify_states/dialogue/enable_3
function lib/modify_states/timeline/enable_pass_3

# --- 提示 ---
execute as @a run tellraw @s {"rawtext":[{"translate":"chat.hint.tutorial_level"}]}

# --- 特殊内容 ---

## 清除玩家的提示
clear @a wstd:hint

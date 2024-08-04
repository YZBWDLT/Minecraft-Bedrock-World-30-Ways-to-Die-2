# ===== 使用跳过 =====

# --- 常规 ---

## 剧情线&时间线
function lib/modify_states/dialogue/enable_5
function lib/modify_states/timeline/enable_pass_5

# --- 跳过 ---
kill @a

# --- 特殊内容 ---

## 清除玩家的跳过
clear @a wstd:skip

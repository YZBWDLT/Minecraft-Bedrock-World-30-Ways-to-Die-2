# ===== 超时强制退出 =====

# --- 超时提示 ---

## 聊天栏
tellraw @a {"rawtext":[{"translate":"chat.out_of_time"}]}
## 音效
function lib/modify_states/sound/mob_villager_no

# --- 退出 ---

function levels/time_limited/level_4/quit

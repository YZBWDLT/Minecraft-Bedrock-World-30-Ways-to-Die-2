# ===== 超时强制退出 =====

# --- 超时提示 ---

## 聊天栏
tellraw @a {"rawtext":[{"translate":"chat.out_of_time"}]}
## 音效
function lib/modify_states/sound/mob_villager_no

# --- 退出 ---

# (指定要执行的退出函数。举例：function levels/time_limited/level_1/quit

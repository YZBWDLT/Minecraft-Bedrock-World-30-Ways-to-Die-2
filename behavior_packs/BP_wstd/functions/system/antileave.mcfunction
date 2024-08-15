# ===== 防退出机制 =====
# 本系统仅对退出重进的玩家有效。

# --- 获取退出重进的玩家 ---
function lib/get_data/player/is_online_before

# --- 令退出重进玩家执行的命令 ---

## 播放音乐
execute as @a[scores={isOnline=0}] at @s run function lib/function_lists/music

# --- 将所有玩家设置为在线模式 ---
function lib/get_data/player/is_online_after

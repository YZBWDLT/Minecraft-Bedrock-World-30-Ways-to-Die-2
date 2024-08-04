# ===== 启用对话 =====
# 用于启用剧情线。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 启用剧情线（状态2），剧情线归零

# --- 启用剧情线 ---

## 启用剧情线状态
scoreboard players set dialogue active 2
## 将剧情线归零
scoreboard players set dialogue time 0

# --- 恢复玩家的移动 ---
inputpermission set @a camera enabled
inputpermission set @a movement enabled

# --- 取消玩家的隐身状态 ---
effect @a invisibility 0 1 true

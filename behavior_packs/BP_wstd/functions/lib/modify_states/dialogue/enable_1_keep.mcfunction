# ===== 启用对话 =====
# 用于启用剧情线，但不更改当前的时间值。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 启用剧情线（状态1）

# --- 启用剧情线 ---

## 启用剧情线状态
scoreboard players set dialogue active 1

# --- 恢复玩家的移动 ---
inputpermission set @a camera enabled
inputpermission set @a movement enabled

# --- 取消玩家的隐身状态 ---
effect @a invisibility 0 1 true

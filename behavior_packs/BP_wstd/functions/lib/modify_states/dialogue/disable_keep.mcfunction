# ===== 禁用对话 =====
# 用于禁用剧情线，但不更改当前的时间值。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 禁用剧情线，且进行其他必要的设置

# --- 禁用剧情线 ---

## 禁用剧情线状态
scoreboard players set dialogue active 0

# --- 恢复玩家的移动 ---
inputpermission set @a camera enabled
inputpermission set @a movement enabled

# --- 取消玩家的隐身状态 ---
effect @a invisibility 0 1 true

# --- 重置相机视角和玩家位置 ---
# 防止因常加载区域过小导致距离过远时无法锁定视角

tp @e[name=playerPosition] 0 0 0
tp @e[name=facingPosition] 0 0 0

# ===== 启用锁定视角的对话 =====
# 用于启用剧情线，并锁定视角，但不更改当前的时间值。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 启用剧情线（状态6）

# --- 启用剧情线 ---

## 启用剧情线状态
scoreboard players set dialogue active 6

# --- 禁止玩家的移动 ---
inputpermission set @a camera disabled
inputpermission set @a movement disabled

# --- 多人下，将玩家改为隐身 ---
# 防止玩家模型重叠
function lib/get_data/amount_player
execute if score playerAmount data matches 2.. run effect @a invisibility 36000 0 true

# ===== 启用锁定视角的对话 =====
# 用于启用剧情线，并锁定视角。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 启用剧情线（状态7），剧情线归零

# --- 启用剧情线 ---

## 启用剧情线状态
scoreboard players set dialogue active 7
## 将剧情线归零
scoreboard players set dialogue time 0

# --- 禁止玩家的移动 ---
inputpermission set @a camera disabled
inputpermission set @a movement disabled

# --- 多人下，将玩家改为隐身 ---
# 防止玩家模型重叠
execute if score playerAmount data matches 2.. run effect @a invisibility 36000 0 true

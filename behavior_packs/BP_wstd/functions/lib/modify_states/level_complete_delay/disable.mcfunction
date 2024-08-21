# ===== 禁用关卡延迟 =====
# 用于禁用关卡延迟。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 禁用关卡延迟，关卡延迟归零

# --- 禁用关卡延迟 ---

## 禁用关卡延迟状态
scoreboard players set levelCompleteDelay active 0
## 将关卡延迟归零
scoreboard players set levelCompleteDelay time 0

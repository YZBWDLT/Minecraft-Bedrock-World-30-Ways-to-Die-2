# ===== 禁止关卡完成 =====
# 用于禁止关卡完成。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 禁止关卡完成

# --- 禁止关卡完成 ---

## 禁止关卡完成状态
scoreboard players set levelCompleteDelay active -1
## 将关卡延迟归零设置为-1
scoreboard players set levelCompleteDelay time -1

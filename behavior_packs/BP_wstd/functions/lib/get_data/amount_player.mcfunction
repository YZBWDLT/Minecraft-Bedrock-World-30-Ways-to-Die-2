# ===== 获取玩家数目 =====
# 用于检测当前情况下的玩家数目。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 输出玩家数目并保存到data.playerAmount下

# --- 主体部分 ---

## 初始化
scoreboard players set playerAmount data 0
## 令每个玩家都执行一次该命令，如此可记录玩家人数
execute as @a run scoreboard players add playerAmount data 1

# ===== 获取玩家使用的游戏版本 =====
# 用于检测玩家使用的版本为国际版/网易版。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 若为国际版，输出data.isNetease=0；若为网易版，输出data.isNetease=1。

# --- 主体部分 ---

## 假定当前正在使用网易版
scoreboard players set isNetease data 1
## 给玩家添加标签cao（这是屏蔽词，如果为网易版，该命令无法执行）
tag @a add cao
## 若检测到有cao的玩家，即上一条命令未被屏蔽，证明是国际版，更改data.isNetease
execute if entity @a[tag=cao] run scoreboard players set isNetease data 0
## 移除辅助标签
tag @a remove cao

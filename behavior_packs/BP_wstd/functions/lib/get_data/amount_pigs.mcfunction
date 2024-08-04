# ===== 获取猪/猪灵/僵尸猪灵数目 =====
# 用于检测当前情况下的猪/猪灵/僵尸猪灵数目。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 输出猪/猪灵/僵尸猪灵数目并保存到data.pigAmount下

# --- 主体部分 ---

## 初始化
scoreboard players set pigAmount data 0
## 令每个猪/猪灵/僵尸猪灵都执行一次该命令，如此可记录猪/猪灵/僵尸猪灵人数
execute as @e[type=pig] run scoreboard players add pigAmount data 1
execute as @e[type=piglin] run scoreboard players add pigAmount data 1
execute as @e[type=zombie_pigman] run scoreboard players add pigAmount data 1

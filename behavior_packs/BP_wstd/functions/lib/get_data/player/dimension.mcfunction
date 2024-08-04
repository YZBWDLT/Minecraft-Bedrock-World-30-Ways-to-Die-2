# ===== 玩家维度检测 =====
# 用于检测玩家所处的维度

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 玩家位置        主世界      下界        末地
# ·    ↓
# · dimension.@s    0           1           2

# --- 检测玩家是否处于主世界 ---
execute as @s in overworld positioned as @s if entity @s[r=1] run scoreboard players set @s dimension 0

# --- 检测玩家是否处于下界 ---
execute as @s in nether positioned as @s if entity @s[r=1] run scoreboard players set @s dimension 1

# --- 检测玩家是否处于末地 ---
execute as @s in the_end positioned as @s if entity @s[r=1] run scoreboard players set @s dimension 2

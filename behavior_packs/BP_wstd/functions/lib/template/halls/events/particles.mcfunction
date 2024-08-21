# ===== 粒子效果 =====
# 该命令需每秒执行一次

# --- 某关卡 ---
# (指定某关卡已解锁后的光效粒子，举例：execute if score progress.timeLimited record matches 0..5 run particle wstd:orange -56 8 9
# (指定某关卡未解锁后的光效粒子，举例：execute if score progress.timeLimited record matches -1 run particle wstd:gray -56 8 9
# (指定某关卡的第一位数字粒子，举例：particle wstd:zero -55.3 11.2 9.9
# (指定某关卡的第二位数字粒子，举例：particle wstd:one -55.7 11.2 9.9

# --- 某功能 ---
# (指定某功能的粒子效果，举例：particle wstd:light_blue 21 8 29
# (指定某设置禁用后的粒子效果，举例：execute if score gameruleLock settings matches 0 run particle wstd:red -104 18 49
# (指定某设置启用后的粒子效果，举例：execute if score gameruleLock settings matches 1 run particle wstd:green -104 18 49


# ===== 记录数据重置 =====
# 用于重置游戏记录性数据
#<!> 注意：请先执行lib/modify_data/init/data后再执行本函数

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 重置记分板、变量和标记实体到默认值下

# --- 数据重置 ---
scoreboard players set bestTime.minute record 9999
scoreboard players set bestTime.second record 59
scoreboard players set bestTime.tick record 19
scoreboard players set mapCompletedTimes record 0

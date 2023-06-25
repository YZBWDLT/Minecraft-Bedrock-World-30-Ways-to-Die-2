# 初始化
scoreboard players set "20" record 20
scoreboard players set "60" record 60
scoreboard players set "1200" record 1200
scoreboard players add recordTick record 0

# 令测试分数等于最终分数
scoreboard players operation testMinute record = @e[name=endTimeMinute] stats
scoreboard players operation testSecond record = @e[name=endTimeSecond] stats
scoreboard players operation testTick record = @e[name=endTimeTick] stats

# 将完成时间转换为已完成的总刻数
scoreboard players operation testMinute record *= "1200" record
scoreboard players operation testSecond record *= "20" record

scoreboard players operation testTick record += testMinute record
scoreboard players operation testTick record += testSecond record

# 把记录的时间也改为已完成的总刻数
scoreboard players operation recordMinute record *= "1200" record
scoreboard players operation recordSecond record *= "20" record

scoreboard players operation recordTick record += recordMinute record
scoreboard players operation recordTick record += recordSecond record

# 此时record.testTick为玩家结束的时间，与record.recordTick进行时间对比，取小值
scoreboard players operation recordTick record < testTick record

# 将recordTick改回正常格式，完成最佳时间记录
scoreboard players operation testMinute record = recordTick record
scoreboard players operation testSecond record = recordTick record
scoreboard players operation testTick record = recordTick record

scoreboard players operation testMinute record /= "1200" record
scoreboard players operation recordMinute record = testMinute record

scoreboard players operation testSecond record /= "20" record
scoreboard players operation testSecond record %= "60" record
scoreboard players operation recordSecond record = testSecond record

scoreboard players operation testTick record %= "20" record
scoreboard players operation recordTick record = testTick record

# 只保留最终数据
scoreboard players reset testMinute record
scoreboard players reset testSecond record
scoreboard players reset testTick record
scoreboard players reset "20" record
scoreboard players reset "60" record
scoreboard players reset "1200" record
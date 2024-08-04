# ===== 获取游玩时间 =====
# 返回并输出玩家的游玩时间

# 调用此方法时：
# · 执行者为玩家
# · 执行位置任意
# 输出结果：
# · 返回并输出玩家的游玩时间

# --- 未完成主线时 ---
# 返回玩家可能作弊的消息 | 其中因为网易有屏蔽词，故分情况输出
execute if score progress.mapStage record matches 0 if score isNetease data matches 0 run tellraw @s { "rawtext": [ { "translate": "chat.item.played_time.evaluate1" } ] } 
execute if score progress.mapStage record matches 0 if score isNetease data matches 1 run tellraw @s { "rawtext": [ { "translate": "netease.chat.item.played_time.evaluate1" } ] } 

# --- 完成主线后 ---

## 输出时间
execute if score progress.mapStage record matches 1 run tellraw @s { "rawtext": [ { "translate": "chat.item.played_time.time", "with": { "rawtext": [ { "score": { "objective": "time", "name": "currentMinute" } } , { "score": { "objective": "time", "name": "currentSecond" } } ] } } ] } 
## 输出让玩家完成30个进度的评价
execute if score progress.mapStage record matches 1 run tellraw @s { "rawtext": [ { "translate": "chat.item.played_time.evaluate2" } ] } 

# --- 完成全进度后 ---

## 当前游玩时间 | 其中因为网易有屏蔽词，故分情况输出
execute if score progress.mapStage record matches 2 if score isNetease data matches 0 run tellraw @s { "rawtext": [ { "translate": "chat.item.played_time.time.completed", "with": { "rawtext": [ { "score": { "objective": "time", "name": "currentMinute" } } , { "score": { "objective": "time", "name": "currentSecond" } } , { "score": { "objective": "time", "name": "tick" } } ] } } ] } 
execute if score progress.mapStage record matches 2 if score isNetease data matches 1 run tellraw @s { "rawtext": [ { "translate": "netease.chat.item.played_time.time_completed", "with": { "rawtext": [ { "score": { "objective": "time", "name": "currentMinute" } } , { "score": { "objective": "time", "name": "currentSecond" } } , { "score": { "objective": "time", "name": "tick" } } ] } } ] } 
## 本次结束时间
execute if score progress.mapStage record matches 2 run tellraw @s { "rawtext": [ { "translate": "chat.item.played_time.end_time", "with": { "rawtext": [ { "score": { "objective": "record", "name": "endTime.minute" } } , { "score": { "objective": "record", "name": "endTime.second" } } , { "score": { "objective": "record", "name": "endTime.tick" } } ] } } ] } 
## 最佳纪录
execute if score progress.mapStage record matches 2 run tellraw @s { "rawtext": [ { "translate": "chat.item.played_time.record", "with": { "rawtext": [ { "score": { "objective": "record", "name": "bestTime.minute" } } , { "score": { "objective": "record", "name": "bestTime.second" } } , { "score": { "objective": "record", "name": "bestTime.tick" } } ] } } ] } 

## 游玩次数
execute if score progress.mapStage record matches 2 run tellraw @s { "rawtext": [ { "translate": "chat.item.played_time.map_completed_times", "with": { "rawtext": [ { "score": { "objective": "record", "name": "mapCompletedTimes" } } ] } } ] } 
## 评价（以分钟为评判标准）
execute if score progress.mapStage record matches 2 if score endTime.minute record matches 0..40 run tellraw @s { "rawtext": [ { "translate": "chat.item.played_time.evaluate3" } ] } 
execute if score progress.mapStage record matches 2 if score endTime.minute record matches 41..100 run tellraw @s { "rawtext": [ { "translate": "chat.item.played_time.evaluate4" } ] } 
execute if score progress.mapStage record matches 2 if score endTime.minute record matches 101..200 run tellraw @s { "rawtext": [ { "translate": "chat.item.played_time.evaluate5" } ] } 
execute if score progress.mapStage record matches 2 if score endTime.minute record matches 201..300 run tellraw @s { "rawtext": [ { "translate": "chat.item.played_time.evaluate6" } ] } 
execute if score progress.mapStage record matches 2 if score endTime.minute record matches 301..500 run tellraw @s { "rawtext": [ { "translate": "chat.item.played_time.evaluate7" } ] } 
execute if score progress.mapStage record matches 2 if score endTime.minute record matches 500.. run tellraw @s { "rawtext": [ { "translate": "chat.item.played_time.evaluate8" } ] } 


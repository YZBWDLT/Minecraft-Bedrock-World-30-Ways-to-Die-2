# 未完成主线时
execute @e[name=mapCompleted,scores={stats=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.played_time.evaluate1"}]}

# 完成主线后
execute @e[name=mapCompleted,scores={stats=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.played_time.time","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedMinute]"}},{"score":{"objective":"time","name":"@e[name=playedSecond]"}}]}}]}
execute @e[name=mapCompleted,scores={stats=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.played_time.evaluate2"}]}

# 全通关后
## 显示时长
execute @e[name=mapCompleted,scores={stats=2}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.played_time.time","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedMinute]"}},{"score":{"objective":"time","name":"@e[name=playedSecond]"}}]}}]}
execute @e[name=mapCompleted,scores={stats=2}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.played_time.end_time","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=endTimeMinute]"}},{"score":{"objective":"stats","name":"@e[name=endTimeSecond]"}}]}}]}
execute @e[name=mapCompleted,scores={stats=2}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.played_time.record","with":{"rawtext":[{"score":{"objective":"record","name":"recordMinute"}},{"score":{"objective":"record","name":"recordSecond"}}]}}]}

## 显示游玩次数
execute @e[name=mapCompleted,scores={stats=2}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.played_time.map_completed_times","with":{"rawtext":[{"score":{"objective":"record","name":"mapCompletedTimes"}}]}}]}

## 显示评价
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @e[name=endTimeMinute,scores={stats=0..40}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.played_time.evaluate3"}]}
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @e[name=endTimeMinute,scores={stats=41..100}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.played_time.evaluate4"}]}
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @e[name=endTimeMinute,scores={stats=101..200}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.played_time.evaluate5"}]}
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @e[name=endTimeMinute,scores={stats=201..300}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.played_time.evaluate6"}]}
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @e[name=endTimeMinute,scores={stats=301..500}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.played_time.evaluate7"}]}
execute @e[name=mapCompleted,scores={stats=2}] ~~~ execute @e[name=endTimeMinute,scores={stats=500..}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.played_time.evaluate8"}]}


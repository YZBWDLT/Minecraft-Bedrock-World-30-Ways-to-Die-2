# ===== 第二阶段剧情线 =====

# --- [120~399] 大厅内移动 ---

## [120] 恢复锁定视角
execute if score dialogue time matches 120 run function lib/modify_states/dialogue/enable_lock_7_keep

execute if score dialogue time matches 120 run titleraw @a title {"rawtext":[{"translate":"title.empty"}]}
execute if score dialogue time matches 120 run titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_1"}]}
execute if score dialogue time matches 120 as @a at @s run playsound random.orb @s

execute if score dialogue time matches 220 run titleraw @a title {"rawtext":[{"translate":"title.map_name"}]}
execute if score dialogue time matches 220 run titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_2"}]}
execute if score dialogue time matches 220 as @a at @s run playsound random.orb @s

execute if score dialogue time matches 320 if score isNetease data matches 0 run titleraw @a title {"rawtext":[{"translate":"title.map_name.completed"}]}
execute if score dialogue time matches 320 if score isNetease data matches 1 run titleraw @a title {"rawtext":[{"translate":"netease.title.map_name_completed"}]}
execute if score dialogue time matches 320 run titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_3"}]}
execute if score dialogue time matches 320 as @a at @s run playsound random.levelup @s ~~~ 1 0.75

# --- [400~539] 进度房间 - 巴豆 ---

execute if score dialogue time matches 400 run titleraw @a title {"rawtext":[{"translate":"title.empty"}]}
execute if score dialogue time matches 400 run titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_4"}]}
execute if score dialogue time matches 400 as @a at @s run playsound random.orb @s

# --- [540~679] 限时第2关 - 南瓜汁 ---

execute if score dialogue time matches 540 run titleraw @a title {"rawtext":[{"translate":"title.empty"}]}
execute if score dialogue time matches 540 run titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_5"}]}
execute if score dialogue time matches 540 as @a at @s run playsound random.orb @s

# --- [680~819] 彩蛋第1关 - 祉语 ---

execute if score dialogue time matches 680 run titleraw @a title {"rawtext":[{"translate":"title.empty"}]}
execute if score dialogue time matches 680 run titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_6"}]}
execute if score dialogue time matches 680 as @a at @s run playsound random.orb @s

# --- [820~1220] 全地图预览 ---

## 游玩时间显示
execute if score dialogue time matches 820 run titleraw @a title {"rawtext":[{"translate":"title.empty"}]}
execute if score dialogue time matches 820 run titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_7","with":{"rawtext":[{"score":{"objective":"record","name":"endTime.minute"}},{"score":{"objective":"record","name":"endTime.second"}}]}}]}
execute if score dialogue time matches 820 as @a at @s run playsound random.orb @s
## “此外还有...”
execute if score dialogue time matches 1020 run titleraw @a title {"rawtext":[{"translate":"title.empty"}]}
execute if score dialogue time matches 1020 run titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_8"}]}
execute if score dialogue time matches 1020 as @a at @s run playsound random.orb @s
## “此外还有...烟花秀！”
execute if score dialogue time matches 1070 run titleraw @a title {"rawtext":[{"translate":"title.empty"}]}
execute if score dialogue time matches 1070 run titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_9"}]}
execute if score dialogue time matches 1070 as @a at @s run playsound random.levelup @s ~~~ 1 0.7
## 感谢你的游玩！
execute if score dialogue time matches 1219 run titleraw @a times 0 60 0
execute if score dialogue time matches 1220 run titleraw @a title {"rawtext":[{"translate":"title.end_10"}]}
execute if score dialogue time matches 1220 run titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_10"}]}
execute if score dialogue time matches 1220 as @a at @s run playsound random.levelup @s ~~~ 1 0.7

# --- [1220] 解除视角控制 ---
execute if score dialogue time matches 1220 run function lib/modify_states/dialogue/disable

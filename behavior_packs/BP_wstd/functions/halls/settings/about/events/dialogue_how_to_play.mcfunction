# ===== 如何游玩（剧情线） =====

# --- [1~160] 大厅动画 ---

## [1] 音效
execute if score dialogue time matches 1 as @a at @s run playsound random.levelup @s ~~~ 1 0.3

## [1~20] 标题
execute if score dialogue time matches 1 run titleraw @a title {"rawtext":[{"translate":"functions.settings.how_to_play.start.title_1"}]}
execute if score dialogue time matches 10 run titleraw @a title {"rawtext":[{"translate":"functions.settings.how_to_play.start.title_2"}]}
execute if score dialogue time matches 20 run titleraw @a subtitle {"rawtext":[{"translate":"functions.settings.how_to_play.start.subtitle"}]}

# --- [161~320] 怎么玩？（第1关场景） ---

## [161] 音效
execute if score dialogue time matches 161 as @a at @s run function lib/modify_states/sound/random_orb_1

## [161] 标题（第1关场景）
execute if score dialogue time matches 161 run titleraw @a title {"rawtext":[{"translate":"functions.settings.how_to_play.how_to_play.title"}]}
execute if score dialogue time matches 161 run titleraw @a subtitle {"rawtext":[{"translate":"functions.settings.how_to_play.how_to_play.subtitle_1"}]}
execute if score dialogue time matches 161..320 if score language data matches 1 run titleraw @a actionbar {"rawtext":[{"translate":"functions.settings.how_to_play.how_to_play.subtitle_1"}]}

# --- [321~480] 关卡（主大厅场景） ---

## [321] 音效
execute if score dialogue time matches 321 as @a at @s run function lib/modify_states/sound/random_orb_1

## [321] 标题（进度中心场景）
execute if score dialogue time matches 321 run titleraw @a title {"rawtext":[{"translate":"functions.settings.how_to_play.levels.title"}]}
execute if score dialogue time matches 321 run titleraw @a subtitle {"rawtext":[{"translate":"functions.settings.how_to_play.levels.subtitle_1"}]}
execute if score dialogue time matches 321..480 if score language data matches 1 run titleraw @a actionbar {"rawtext":[{"translate":"functions.settings.how_to_play.levels.subtitle_1"}]}

# --- [481~640] 关卡（彩蛋第6关场景） ---

## [481] 音效
execute if score dialogue time matches 481 as @a at @s run function lib/modify_states/sound/random_orb_1

## [481] 标题（进度中心场景）
execute if score dialogue time matches 481 run titleraw @a title {"rawtext":[{"translate":"functions.settings.how_to_play.levels.title"}]}
execute if score dialogue time matches 481 run titleraw @a subtitle {"rawtext":[{"translate":"functions.settings.how_to_play.levels.subtitle_2"}]}
execute if score dialogue time matches 481..640 if score language data matches 1 run titleraw @a actionbar {"rawtext":[{"translate":"functions.settings.how_to_play.levels.subtitle_2"}]}

# --- [641~800] 关卡（彩蛋第6关场景） ---

## [641] 音效
execute if score dialogue time matches 641 as @a at @s run function lib/modify_states/sound/random_orb_1

## [641] 标题（进度中心场景）
execute if score dialogue time matches 641 run titleraw @a title {"rawtext":[{"translate":"functions.settings.how_to_play.levels.title"}]}
execute if score dialogue time matches 641 run titleraw @a subtitle {"rawtext":[{"translate":"functions.settings.how_to_play.levels.subtitle_3"}]}
execute if score dialogue time matches 641..800 if score language data matches 1 run titleraw @a actionbar {"rawtext":[{"translate":"functions.settings.how_to_play.levels.subtitle_3"}]}

# --- [801~960] 关卡（自定义关卡场景） ---

## [801] 音效
execute if score dialogue time matches 801 as @a at @s run function lib/modify_states/sound/random_orb_1

## [801] 标题（进度中心场景）
execute if score dialogue time matches 801 run titleraw @a title {"rawtext":[{"translate":"functions.settings.how_to_play.levels.title"}]}
execute if score dialogue time matches 801 run titleraw @a subtitle {"rawtext":[{"translate":"functions.settings.how_to_play.levels.subtitle_4"}]}
execute if score dialogue time matches 801..960 if score language data matches 1 run titleraw @a actionbar {"rawtext":[{"translate":"functions.settings.how_to_play.levels.subtitle_4"}]}

# --- [961~1120] 辅助性功能 ---

## [961] 音效
execute if score dialogue time matches 961 as @a at @s run function lib/modify_states/sound/random_orb_1

## [961] 标题（进度中心场景）
execute if score dialogue time matches 961 run titleraw @a title {"rawtext":[{"translate":"functions.settings.how_to_play.aux_functions.title"}]}
execute if score dialogue time matches 961 run titleraw @a subtitle {"rawtext":[{"translate":"functions.settings.how_to_play.aux_functions.subtitle_1"}]}
execute if score dialogue time matches 961..1120 if score language data matches 1 run titleraw @a actionbar {"rawtext":[{"translate":"functions.settings.how_to_play.aux_functions.subtitle_1"}]}

# --- [1121~1280] 辅助性功能（第2关场景） ---

## [1121] 音效
execute if score dialogue time matches 1121 as @a at @s run function lib/modify_states/sound/random_orb_1

## [1121] 标题（进度中心场景）
execute if score dialogue time matches 1121 run titleraw @a title {"rawtext":[{"translate":"functions.settings.how_to_play.aux_functions.title"}]}
execute if score dialogue time matches 1121 run titleraw @a subtitle {"rawtext":[{"translate":"functions.settings.how_to_play.aux_functions.subtitle_2"}]}
execute if score dialogue time matches 1121..1280 if score language data matches 1 run titleraw @a actionbar {"rawtext":[{"translate":"functions.settings.how_to_play.aux_functions.subtitle_2"}]}

# --- [1281~1440] 辅助性功能（第12关场景） ---

## [1281] 音效
execute if score dialogue time matches 1281 as @a at @s run function lib/modify_states/sound/random_orb_1

## [1281] 标题（进度中心场景）
execute if score dialogue time matches 1281 run titleraw @a title {"rawtext":[{"translate":"functions.settings.how_to_play.aux_functions.title"}]}
execute if score dialogue time matches 1281 run titleraw @a subtitle {"rawtext":[{"translate":"functions.settings.how_to_play.aux_functions.subtitle_3"}]}
execute if score dialogue time matches 1281..1440 if score language data matches 1 run titleraw @a actionbar {"rawtext":[{"translate":"functions.settings.how_to_play.aux_functions.subtitle_3"}]}

# --- [1441~1600] 辅助性功能（第13关场景） ---

## [1441] 音效
execute if score dialogue time matches 1441 as @a at @s run function lib/modify_states/sound/random_orb_1

## [1441] 标题（进度中心场景）
execute if score dialogue time matches 1441 run titleraw @a title {"rawtext":[{"translate":"functions.settings.how_to_play.aux_functions.title"}]}
execute if score dialogue time matches 1441 run titleraw @a subtitle {"rawtext":[{"translate":"functions.settings.how_to_play.aux_functions.subtitle_4"}]}
execute if score dialogue time matches 1441..1600 if score language data matches 1 run titleraw @a actionbar {"rawtext":[{"translate":"functions.settings.how_to_play.aux_functions.subtitle_4"}]}

# --- [1601~1760] 统计（统计中心场景） ---

## [1601] 音效
execute if score dialogue time matches 1601 as @a at @s run function lib/modify_states/sound/random_orb_1

## [1601] 标题（进度中心场景）
execute if score dialogue time matches 1601 run titleraw @a title {"rawtext":[{"translate":"functions.settings.how_to_play.stats.title"}]}
execute if score dialogue time matches 1601 run titleraw @a subtitle {"rawtext":[{"translate":"functions.settings.how_to_play.stats.subtitle"}]}
execute if score dialogue time matches 1601..1760 if score language data matches 1 run titleraw @a actionbar {"rawtext":[{"translate":"functions.settings.how_to_play.stats.subtitle"}]}

# --- [1761~1920] 进度（进度中心场景） ---

## [1761] 音效
execute if score dialogue time matches 1761 as @a at @s run function lib/modify_states/sound/random_orb_1

## [1761] 标题（进度中心场景）
execute if score dialogue time matches 1761 run titleraw @a title {"rawtext":[{"translate":"functions.settings.how_to_play.advancements.title"}]}
execute if score dialogue time matches 1761 run titleraw @a subtitle {"rawtext":[{"translate":"functions.settings.how_to_play.advancements.subtitle"}]}
execute if score dialogue time matches 1761..1920 if score language data matches 1 run titleraw @a actionbar {"rawtext":[{"translate":"functions.settings.how_to_play.advancements.subtitle"}]}

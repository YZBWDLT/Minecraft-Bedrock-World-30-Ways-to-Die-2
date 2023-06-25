# 当权限等级不为2时，执行失败
tellraw @s[scores={oplevel=!2}] {"rawtext":[{"translate":"feedback.error.oplevel_too_low"}]}

# 当权限等级为2时，反馈
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.scoreboard_query.line1"}]}

## === 激活类 active ===
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 物品1检测"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"active.itemTester1 = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=itemTester1]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 物品2检测"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"active.itemTester2 = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=itemTester2]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 物品3检测"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"active.itemTester3 = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=itemTester3]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 物品4检测"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"active.itemTester4 = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=itemTester4]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 物品5检测"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"active.itemTester5 = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=itemTester5]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 通关延迟器，0：不激活延迟，1-5：部分关卡启用不同挡位的通关延迟，-5~-1：所有关卡启用不同挡位的通关延迟"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"active.levelCompleteDelay = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=levelCompleteDelay]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 音效播放器，0：不激活，不为0：根据本值决定播放何种音效"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"active.soundPlayer = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=soundPlayer]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 关卡用时间线（激活状态） - 0：不激活，1：激活且计时，2：激活但不计时"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"active.timeline = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=timeline]"}}]}}]}

## === 后台类 backend ===
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 计数器"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"backend.counter = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=counter]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录自定义关卡是否默认为编辑模式，0=游戏模式，1=编辑模式"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"backend.diyEditMode = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=diyEditMode]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录自定义关卡是否处于加载状态，<=0: 加载完毕，>0: 在加载"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"backend.diyIsLoading = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=diyIsLoading]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录自定义关卡是否处于保存状态，<=0: 保存完毕，>0: 在保存"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"backend.diyIsSaving = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=diyIsSaving]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录自定义关卡的房间大小设置，0=小房间，1=中房间，2=大房间"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"backend.diyRoomSize = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=diyRoomSize]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 检索特定实体数目"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"backend.entityAmount = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=entityAmount]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录关卡ID"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"backend.level = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=level]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录关卡是否完成，0=未刚刚完成，1=刚刚完成"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"backend.levelCompleted = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=levelCompleted]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 生成随机数"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"backend.randomNumber = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=randomNumber]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录本关是否使用了跳过，0=未使用，1=已使用"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"backend.skipUsed = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=skipUsed]"}}]}}]}

## === display & oplevel ===

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录维度信息"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"dimension.@s = %%s","with":{"rawtext":[{"score":{"objective":"dimension","name":"@s"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 显示记分板"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"display"}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录玩家权限等级"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"oplevel.@s = %%s","with":{"rawtext":[{"score":{"objective":"oplevel","name":"@s"}}]}}]}

## === 记录类 record ===

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 地图完成次数"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"record.mapCompletedTimes = %%s","with":{"rawtext":[{"score":{"objective":"record","name":"mapCompletedTimes"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录时间，单位：分钟"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"record.recordMinute = %%s","with":{"rawtext":[{"score":{"objective":"record","name":"recordMinute"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录时间，单位：秒"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"record.recordSecond = %%s","with":{"rawtext":[{"score":{"objective":"record","name":"recordSecond"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录时间，单位：刻"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"record.recordTick = %%s","with":{"rawtext":[{"score":{"objective":"record","name":"recordTick"}}]}}]}


## === 设置类 settings ===

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录开发者模式开启状态，0=关闭，1=开启"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"settings.developerMode = %%s","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=developerMode]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 判断是否锁定游戏规则，0=不锁定，1=锁定"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"settings.gameruleLocker = %%s","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=gameruleLocker]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 控制是否启用提示，0=关闭提示，1=开启提示"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"settings.hintEnabled = %%s","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=hintEnabled]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 判断是否为Netease Version，0=否，1=是"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"settings.isNetease = %%s","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=isNetease]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 语言信息，0=中文，1=English"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"settings.language = %%s","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=language]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录是否开启第30关的对话，0=关闭，1=开启，2=开启且播放声音（播放后自动调整为1）"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"settings.level30Dialogue = %%s","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=level30Dialogue]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 通关延迟器的设定，-5~-1=所有关卡延迟通关，0=不延迟通关，1~5=部分关卡延迟通关"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"settings.levelCompleteDelay = %%s","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=levelCompleteDelay]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 地图时间设定，0=终为白日，1=烟花教程黑夜，2=终为黑夜，3=时间流逝"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"settings.mapTime = %%s","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=mapTime]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记分板显示，0=不显示，1=部分显示，2=完整显示"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"settings.scoreboardDisplay = %%s","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=scoreboardDisplay]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 控制是否启用跳过，0=关闭跳过，1=开启跳过"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"settings.skipEnabled = %%s","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=skipEnabled]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 是否为速通模式，0=否，1=是"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"settings.speedrunMode = %%s","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=speedrunMode]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 控制是否启用攻略，0=关闭攻略，1=开启攻略"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"settings.strategyEnabled = %%s","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=strategyEnabled]"}}]}}]}

## === 后台数据类 ===

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录所有关卡提示使用数目"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"stats.allHintUsed = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=allHintUsed]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录所有关卡提示使用数目"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"stats.allSkipUsed = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=allSkipUsed]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录所有关卡提示使用数目"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"stats.allStrategyUsed = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=allStrategyUsed]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录进度获取数"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"stats.advancement = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=advancement]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录彩蛋关卡进度"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"stats.easterEggAdvancement = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=easterEggAdvancement]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 结束时间，单位：分钟"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"stats.endTimeMinute = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=endTimeMinute]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 结束时间，单位：秒"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"stats.endTimeSecond = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=endTimeSecond]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 结束时间，单位：刻"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"stats.endTimeTick = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=endTimeTick]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录主线关卡进度"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"stats.levelAdvancement = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=levelAdvancement]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录地图是否已完成，0=未完成，1=已完成主线，2=已完成所有进度"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"stats.mapCompleted = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=mapCompleted]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 记录限时关卡进度"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"stats.timeLimitedAdvancement = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=timeLimitedAdvancement]"}}]}}]}

## === 时间类 time ===

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 控制大厅快捷栏标题，单位：秒"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"time.actionbarSecond = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=actionbarSecond]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 后台命令系统时间刷新，单位：秒"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"time.backendSecond = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=backendSecond]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 通关延迟器，单位：刻"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"time.levelCompleteDelay = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=levelCompleteDelay]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 时间记录，单位：分钟"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"time.playedMinute = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedMinute]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 时间记录，单位：秒"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"time.playedSecond = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedSecond]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# Netease 音乐播放间隔，单位：刻"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"time.playsoundInterval = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playsoundInterval]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 剩余时间，单位：秒"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"time.remainingTime = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=remainingTime]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 音效播放器，单位：刻"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"time.soundPlayer = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=soundPlayer]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 时间记录（每20刻循环一次），单位：刻"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"time.ticker = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=ticker]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"§7# 时间线，单位：刻"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"time.timeline = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=timeline]"}}]}}]}

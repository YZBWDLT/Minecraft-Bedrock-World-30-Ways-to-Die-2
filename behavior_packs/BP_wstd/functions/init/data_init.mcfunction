# 数据初始化

## === 记分板初始化 ===

scoreboard objectives remove stats
scoreboard objectives remove oplevel
scoreboard objectives remove time
scoreboard objectives remove backend
scoreboard objectives remove settings
scoreboard objectives remove active
scoreboard objectives remove dimension

scoreboard objectives add stats dummy "统计数据"
scoreboard objectives add oplevel dummy "权限等级"
scoreboard objectives add time dummy "时间数据"
scoreboard objectives add backend dummy "后台数据"
scoreboard objectives add settings dummy "设置数据"
scoreboard objectives add active dummy "激活数据"
scoreboard objectives add dimension dummy "维度数据"
scoreboard objectives add record dummy "记录数据"
scoreboard objectives add itemUsed dummy "物品使用数据"

scoreboard players add @a oplevel 0
scoreboard players set @a dimension 0

## === 标记初始化 ===

kill @e[family=marker,family=!dimension]
summon je:marker "spawnpoint" 12 9 3

### === 后台类 backend ===
summon je:marker "counter" 0 1 0
summon je:marker "level" 0 1 0
summon je:marker "levelCompleted" 0 1 0
summon je:marker "randomNumber" 0 1 0
summon je:marker "skipUsed" 0 1 0
summon je:marker "entityAmount" 0 1 0
summon je:marker "diyEditMode" 0 1 0
summon je:marker "diyRoomSize" 0 1 0
summon je:marker "diyIsLoading" 0 1 0
summon je:marker "diyIsSaving" 0 1 0

scoreboard players set @e[name=level] backend -20
scoreboard players set @e[name=randomNumber] backend 0
scoreboard players set @e[name=counter] backend 0
scoreboard players set @e[name=skipUsed] backend 0
scoreboard players set @e[name=levelCompleted] backend 0
scoreboard players set @e[name=entityAmount] backend 0
scoreboard players set @e[name=diyEditMode] backend 1
scoreboard players set @e[name=diyRoomSize] backend 0
scoreboard players set @e[name=diyIsLoading] backend 0
scoreboard players set @e[name=diyIsSaving] backend 0

### === 设置类 settings ===
summon je:marker "developerMode" 0 1 0
summon je:marker "hintEnabled" 0 1 0
summon je:marker "isNetease" 0 1 0
summon je:marker "level30Dialogue" 0 1 0
summon je:marker "skipEnabled" 0 1 0
summon je:marker "strategyEnabled" 0 1 0
summon je:marker "gameruleLocker" 0 1 0
summon je:marker "levelCompleteDelay" 0 1 0
summon je:marker "mapTime" 0 1 0
summon je:marker "scoreboardDisplay" 0 1 0
summon je:marker "speedrunMode" 0 1 0
summon je:marker "language" 0 1 0

scoreboard players set @e[name=developerMode] settings 0
scoreboard players set @e[name=hintEnabled] settings 1
scoreboard players set @e[name=strategyEnabled] settings 1
scoreboard players set @e[name=skipEnabled] settings 1
scoreboard players set @e[name=isNetease] settings 1
scoreboard players set @e[name=level30Dialogue] settings 2
scoreboard players set @e[name=gameruleLocker] settings 0
scoreboard players set @e[name=levelCompleteDelay] settings 2
scoreboard players set @e[name=mapTime] settings 1
scoreboard players set @e[name=scoreboardDisplay] settings 2
scoreboard players set @e[name=speedrunMode] settings 0
scoreboard players set @e[name=language] settings 0

### === 统计数据类 stats ===
summon je:marker "mapCompleted" 0 1 0
summon je:marker "levelAdvancement" 0 1 0
summon je:marker "easterEggAdvancement" 0 1 0
summon je:marker "timeLimitedAdvancement" 0 1 0
summon je:marker "advancement" 0 1 0
summon je:marker "allHintUsed" 0 1 0
summon je:marker "allStrategyUsed" 0 1 0
summon je:marker "allSkipUsed" 0 1 0
summon je:marker "endTimeMinute" 0 1 0
summon je:marker "endTimeSecond" 0 1 0
summon je:marker "endTimeTick" 0 1 0

scoreboard players set @e[name=mapCompleted] stats 0
scoreboard players set @e[name=levelAdvancement] stats 0
scoreboard players set @e[name=easterEggAdvancement] stats 0
scoreboard players set @e[name=timeLimitedAdvancement] stats 0
scoreboard players set @e[name=advancement] stats -1
scoreboard players set @e[name=allHintUsed] stats 0
scoreboard players set @e[name=allStrategyUsed] stats 0
scoreboard players set @e[name=allSkipUsed] stats 0
scoreboard players set @e[name=endTimeMinute] stats 0
scoreboard players set @e[name=endTimeSecond] stats 0
scoreboard players set @e[name=endTimeTick] stats 0

### === 时间记录类 time ===
summon je:marker "actionbarSecond" 0 1 0
summon je:marker "backendSecond" 0 1 0
summon je:marker "ticker" 0 1 0
summon je:marker "playedSecond" 0 1 0
summon je:marker "playedMinute" 0 1 0
summon je:marker "timeline" 0 1 0
summon je:marker "remainingTime" 0 1 0
summon je:marker "soundPlayer" 0 1 0
summon je:marker "playsoundInterval" 0 1 0

scoreboard players set @e[name=soundPlayer] time 0
scoreboard players set @e[name=actionbarSecond] time 0
scoreboard players set @e[name=backendSecond] time 0
scoreboard players set @e[name=ticker] time 0
scoreboard players set @e[name=playedSecond] time 0
scoreboard players set @e[name=playedMinute] time 0
scoreboard players set @e[name=timeline] time 0
scoreboard players set @e[name=remainingTime] time 0
scoreboard players set @e[name=levelCompleteDelay] time 0
scoreboard players set @e[name=playsoundInterval] time 0

### === 激活类 active ===
summon je:marker "itemTester1" 0 1 0
summon je:marker "itemTester2" 0 1 0
summon je:marker "itemTester3" 0 1 0
summon je:marker "itemTester4" 0 1 0
summon je:marker "itemTester5" 0 1 0

scoreboard players set @e[name=timeline] active 2
scoreboard players set @e[name=soundPlayer] active 0
scoreboard players set @e[name=itemTester1] active 0
scoreboard players set @e[name=itemTester2] active 0
scoreboard players set @e[name=itemTester3] active 0
scoreboard players set @e[name=itemTester4] active 0
scoreboard players set @e[name=itemTester5] active 0
scoreboard players set @e[name=levelCompleteDelay] active 0

function system/version_tester/netease_version_tester

### === 进度类 ===
summon je:marker "advGetStarted" 0 3 0
summon je:marker "advEasterEggFound" 0 3 0
summon je:marker "advLetMeSee" 0 3 0
summon je:marker "advTheRealEnd" 0 3 0

scoreboard players set @e[name=advGetStarted] stats 0
scoreboard players set @e[name=advEasterEggFound] stats 0
scoreboard players set @e[name=advLetMeSee] stats 0
scoreboard players set @e[name=advTheRealEnd] stats 0

### === 物品使用类 ===
scoreboard players set @a itemUsed -1
# ===== 数据重置 =====
# 用于重置游戏数据

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 重置记分板、变量和标记实体到默认值下

# --- 常加载区域重置 ---
tickingarea add 0 0 0 15 0 15 "originArea"
execute in nether run tickingarea add 0 0 0 15 0 15 "netherArea"
execute in the_end run tickingarea add 0 0 0 15 0 15 "theEndArea"

# --- 记分板重置 ---
scoreboard objectives add active dummy "激活状态"
scoreboard objectives add data dummy "数据"
scoreboard objectives add settings dummy "设置"
scoreboard objectives add time dummy "时间"
scoreboard objectives add record dummy "记录"

scoreboard objectives add isOnline dummy "玩家在线"
scoreboard objectives add dimension dummy "玩家维度"

# --- 数据重置 ---

## 玩家数据
scoreboard players set @a isOnline 1
scoreboard players set @a dimension 0

## 计时器
scoreboard players set tick time 0
scoreboard players set currentSecond time 0
scoreboard players set currentMinute time 0
scoreboard players set remainingTime time 0

## 关卡数据
scoreboard players set level data -20
scoreboard players set diyLevels.step data 0
scoreboard players set diyLevels.isEditMode data 0
scoreboard players set diyLevels.roomSize data 0

## 辅助功能相关数据
scoreboard players set hintEnabled settings 1
scoreboard players set strategyEnabled settings 1
scoreboard players set skipEnabled settings 1
scoreboard players set hintUsed data 0
scoreboard players set strategyUsed data 0
scoreboard players set skipUsed data 0
scoreboard players set hintUsed record 0
scoreboard players set strategyUsed record 0
scoreboard players set skipUsed record 0

## 设置数据
scoreboard players set levelCompleteDelay settings 2
scoreboard players set developerMode settings 0
scoreboard players set level30Dialogue settings 2
scoreboard players set speedrunMode settings 0
scoreboard players set oplevel settings 0
scoreboard players set gameruleLock settings 0
scoreboard players set scoreboardDisplay settings 2
scoreboard players set language data 0
scoreboard players set mapTime settings 1

## 控制器（时间线、剧情线、音效、关卡延迟完成）
scoreboard players set timeline active 0
scoreboard players set timeline time 0
scoreboard players set dialogue active 0
scoreboard players set dialogue time 0
scoreboard players set sound active 0
scoreboard players set sound time 0
scoreboard players set levelCompleteDelay active 0
scoreboard players set levelCompleteDelay time 0

## 实体数目
scoreboard players set playerAmount data 1
scoreboard players set pigAmount data 0

## 进度性数据统计
scoreboard players set progress.level record 0
scoreboard players set progress.easterEgg record -1
scoreboard players set progress.timeLimited record -1
scoreboard players set progress.advancement record -1
scoreboard players set progress.mapStage record 0

## 记录性数据统计
scoreboard players set endTime.minute record 0
scoreboard players set endTime.second record 0
scoreboard players set endTime.tick record 0

## 杂项数据
scoreboard players set isNetease data 0
scoreboard players set levelCompleted data 0

# --- 标记实体重置 ---
kill @e[family=marker,family=!dimension]

## 相机的玩家位置和面向位置
summon wstd:marker 0 0 0 0 0 * "playerPosition"
summon wstd:marker 0 0 0 0 0 * "facingPosition"

# --- 重置统计与进度数据 ---

## 提示
scoreboard players set hint.level1 record 0
scoreboard players set hint.level2 record 0
scoreboard players set hint.level3 record 0
scoreboard players set hint.level4 record 0
scoreboard players set hint.level5 record 0
scoreboard players set hint.level6 record 0
scoreboard players set hint.level7 record 0
scoreboard players set hint.level8 record 0
scoreboard players set hint.level9 record 0
scoreboard players set hint.level10 record 0
scoreboard players set hint.level11 record 0
scoreboard players set hint.level12 record 0
scoreboard players set hint.level13Part1 record 0
scoreboard players set hint.level14 record 0
scoreboard players set hint.level15 record 0
scoreboard players set hint.level16 record 0
scoreboard players set hint.level17 record 0
scoreboard players set hint.level18 record 0
scoreboard players set hint.level19 record 0
scoreboard players set hint.level23 record 0
scoreboard players set hint.level24 record 0
scoreboard players set hint.level25 record 0
scoreboard players set hint.level26 record 0
scoreboard players set hint.level27 record 0
scoreboard players set hint.level28 record 0
scoreboard players set hint.level29 record 0
## 攻略
scoreboard players set strategy.level1 record 0
scoreboard players set strategy.level2 record 0
scoreboard players set strategy.level3 record 0
scoreboard players set strategy.level4 record 0
scoreboard players set strategy.level5 record 0
scoreboard players set strategy.level6 record 0
scoreboard players set strategy.level7 record 0
scoreboard players set strategy.level8 record 0
scoreboard players set strategy.level9 record 0
scoreboard players set strategy.level10 record 0
scoreboard players set strategy.level11 record 0
scoreboard players set strategy.level12 record 0
scoreboard players set strategy.level13Part1 record 0
scoreboard players set strategy.level14 record 0
scoreboard players set strategy.level15 record 0
scoreboard players set strategy.level16 record 0
scoreboard players set strategy.level17 record 0
scoreboard players set strategy.level18 record 0
scoreboard players set strategy.level19 record 0
scoreboard players set strategy.level23 record 0
scoreboard players set strategy.level24 record 0
scoreboard players set strategy.level25 record 0
scoreboard players set strategy.level26 record 0
scoreboard players set strategy.level27 record 0
scoreboard players set strategy.level28 record 0
scoreboard players set strategy.level29 record 0
## 跳过
scoreboard players set skip.level13Part1 record 0
scoreboard players set skip.level13Part2 record 0
scoreboard players set skip.level13Part3 record 0
scoreboard players set skip.level20 record 0
scoreboard players set skip.level21 record 0
scoreboard players set skip.level22 record 0
scoreboard players set skip.level30 record 0
## 进度
scoreboard players set advancement.getStarted record 0
scoreboard players set advancement.moreSkilled record -1
scoreboard players set advancement.halfWay record -1
scoreboard players set advancement.theEnd record -1
scoreboard players set advancement.anotherWay record -1
scoreboard players set advancement.whyPlaceIronLikeThis record -1
scoreboard players set advancement.whiteMobsAnywhere record -1
scoreboard players set advancement.bug record -1
scoreboard players set advancement.luckyGuy record -1
scoreboard players set advancement.noDolls record -1
scoreboard players set advancement.easterEggFound record 0
scoreboard players set advancement.yes record -1
scoreboard players set advancement.notAParkour record -1
scoreboard players set advancement.superLike record -1
scoreboard players set advancement.ironman record -1
scoreboard players set advancement.brewingMaster record -1
scoreboard players set advancement.redstoneMaster record -1
scoreboard players set advancement.surviveMaster record -1
scoreboard players set advancement.emerald record -1
scoreboard players set advancement.button record -1
scoreboard players set advancement.buttonAgain record -1
scoreboard players set advancement.noMoreButton record -1
scoreboard players set advancement.soFast record -1
scoreboard players set advancement.howCanYouSpeedrun record -1
scoreboard players set advancement.theRealEnd record 0
scoreboard players set advancement.letMeSee record 0
scoreboard players set advancement.celebration record -1
scoreboard players set advancement.who record -1
scoreboard players set advancement.diy record -1
scoreboard players set advancement.appreciateAndWatch record -1

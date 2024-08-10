# ===== 查询函数 =====
# 用于查询当前变量

# --- 权限等级不足时 ---
execute unless score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.error.oplevel_too_low"}]}

# --- 有权限等级时 ---

# 当权限等级为2时，反馈
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.line1"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.line2"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.line3"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.line4"}]}

## 玩家数据
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.player_data"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.dimension.@s","with":{"rawtext":[{"score":{"objective":"dimension","name":"@s"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.isOnline.@s","with":{"rawtext":[{"score":{"objective":"isOnline","name":"@s"}}]}}]}

## active
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.dialogue","with":{"rawtext":[{"score":{"objective":"active","name":"dialogue"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.easterEgg5.itemTestDiamondPickaxe","with":{"rawtext":[{"score":{"objective":"active","name":"easterEgg5.itemTestDiamondPickaxe"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.easterEgg5.itemTestIronPickaxe","with":{"rawtext":[{"score":{"objective":"active","name":"easterEgg5.itemTestIronPickaxe"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.easterEgg7.itemTestLever","with":{"rawtext":[{"score":{"objective":"active","name":"easterEgg7.itemTestLever"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.hided3.itemTestBrewingStand","with":{"rawtext":[{"score":{"objective":"active","name":"hided3.itemTestBrewingStand"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.hided3.itemTestCraftingTable","with":{"rawtext":[{"score":{"objective":"active","name":"hided3.itemTestCraftingTable"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.hided3.itemTestFurnace","with":{"rawtext":[{"score":{"objective":"active","name":"hided3.itemTestFurnace"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.hided3.itemTestWoodenPickaxe","with":{"rawtext":[{"score":{"objective":"active","name":"hided3.itemTestWoodenPickaxe"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.hided3.itemTestStonePickaxe","with":{"rawtext":[{"score":{"objective":"active","name":"hided3.itemTestStonePickaxe"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.level9.itemTestCraftingTable","with":{"rawtext":[{"score":{"objective":"active","name":"level9.itemTestCraftingTable"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.level10.itemTestBlackBed","with":{"rawtext":[{"score":{"objective":"active","name":"level10.itemTestBlackBed"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.level10.itemTestBrownBed","with":{"rawtext":[{"score":{"objective":"active","name":"level10.itemTestBrownBed"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.level10.itemTestGrayBed","with":{"rawtext":[{"score":{"objective":"active","name":"level10.itemTestGrayBed"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.level10.itemTestLightGrayBed","with":{"rawtext":[{"score":{"objective":"active","name":"level10.itemTestLightGrayBed"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.level10.itemTestPinkBed","with":{"rawtext":[{"score":{"objective":"active","name":"level10.itemTestPinkBed"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.level10.itemTestWhiteBed","with":{"rawtext":[{"score":{"objective":"active","name":"level10.itemTestWhiteBed"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.level13.itemTestRedstoneRepeater","with":{"rawtext":[{"score":{"objective":"active","name":"level13.itemTestRedstoneRepeater"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.level20.itemTestBrewingStand","with":{"rawtext":[{"score":{"objective":"active","name":"level20.itemTestBrewingStand"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.level20.itemTestCraftingTable","with":{"rawtext":[{"score":{"objective":"active","name":"level20.itemTestCraftingTable"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.level20.itemTestWaterBucket","with":{"rawtext":[{"score":{"objective":"active","name":"level20.itemTestWaterBucket"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.level26.itemTestDispenser","with":{"rawtext":[{"score":{"objective":"active","name":"level26.itemTestDispenser"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.levelCompleteDelay","with":{"rawtext":[{"score":{"objective":"active","name":"levelCompleteDelay"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.mainHall.resetMapWarningCountdown","with":{"rawtext":[{"score":{"objective":"active","name":"mainHall.resetMapWarningCountdown"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.settingCenter.developerModeWarningCountdown","with":{"rawtext":[{"score":{"objective":"active","name":"settingCenter.developerModeWarningCountdown"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.settingCenter.resetMapWarningCountdown","with":{"rawtext":[{"score":{"objective":"active","name":"settingCenter.resetMapWarningCountdown"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.settingCenter.resetRecordWarningCountdown","with":{"rawtext":[{"score":{"objective":"active","name":"settingCenter.resetRecordWarningCountdown"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.sound","with":{"rawtext":[{"score":{"objective":"active","name":"sound"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.active.timeline","with":{"rawtext":[{"score":{"objective":"active","name":"timeline"}}]}}]}

## data
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.diyLevels.isEditMode","with":{"rawtext":[{"score":{"objective":"data","name":"diyLevels.isEditMode"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.diyLevels.roomSize","with":{"rawtext":[{"score":{"objective":"data","name":"diyLevels.roomSize"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.diyLevels.step","with":{"rawtext":[{"score":{"objective":"data","name":"diyLevels.step"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.easterEgg1.treeBlockBroken","with":{"rawtext":[{"score":{"objective":"data","name":"easterEgg1.treeBlockBroken"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.easterEgg2.totalScore","with":{"rawtext":[{"score":{"objective":"data","name":"easterEgg2.totalScore"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.easterEgg3.finishedParkour","with":{"rawtext":[{"score":{"objective":"data","name":"easterEgg3.finishedParkour"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.easterEgg4.likedTimes","with":{"rawtext":[{"score":{"objective":"data","name":"easterEgg4.likedTimes"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.easterEgg6.playerInLava","with":{"rawtext":[{"score":{"objective":"data","name":"easterEgg6.playerInLava"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.endStage2.fireworkLauncher","with":{"rawtext":[{"score":{"objective":"data","name":"endStage2.fireworkLauncher"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.hided2.endBlockBroken","with":{"rawtext":[{"score":{"objective":"data","name":"hided2.endBlockBroken"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.hintUsed","with":{"rawtext":[{"score":{"objective":"data","name":"hintUsed"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.isNetease","with":{"rawtext":[{"score":{"objective":"data","name":"isNetease"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.language","with":{"rawtext":[{"score":{"objective":"data","name":"language"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.level","with":{"rawtext":[{"score":{"objective":"data","name":"level"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.level7.enteredNether","with":{"rawtext":[{"score":{"objective":"data","name":"level7.enteredNether"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.level13.redstoneActivatedTimes","with":{"rawtext":[{"score":{"objective":"data","name":"level13.redstoneActivatedTimes"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.level18.playerFellIntoVoid","with":{"rawtext":[{"score":{"objective":"data","name":"level18.playerFellIntoVoid"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.level22.endBlockBroken","with":{"rawtext":[{"score":{"objective":"data","name":"level22.endBlockBroken"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.levelCompleted","with":{"rawtext":[{"score":{"objective":"data","name":"levelCompleted"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.mainHall.actionbarTitleRandom","with":{"rawtext":[{"score":{"objective":"data","name":"mainHall.actionbarTitleRandom"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.pigAmount","with":{"rawtext":[{"score":{"objective":"data","name":"pigAmount"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.playerAmount","with":{"rawtext":[{"score":{"objective":"data","name":"playerAmount"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.settingCenter.creditsViewed","with":{"rawtext":[{"score":{"objective":"data","name":"settingCenter.creditsViewed"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.skipUsed","with":{"rawtext":[{"score":{"objective":"data","name":"skipUsed"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.strategyUsed","with":{"rawtext":[{"score":{"objective":"data","name":"strategyUsed"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.timeLimited4.totalScore","with":{"rawtext":[{"score":{"objective":"data","name":"timeLimited4.totalScore"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.data.timeLimited5.totalScore","with":{"rawtext":[{"score":{"objective":"data","name":"timeLimited5.totalScore"}}]}}]}

## record
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record.bestTime.minute","with":{"rawtext":[{"score":{"objective":"record","name":"bestTime.minute"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record.bestTime.second","with":{"rawtext":[{"score":{"objective":"record","name":"bestTime.second"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record.bestTime.tick","with":{"rawtext":[{"score":{"objective":"record","name":"bestTime.tick"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record.endTime.minute","with":{"rawtext":[{"score":{"objective":"record","name":"endTime.minute"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record.endTime.second","with":{"rawtext":[{"score":{"objective":"record","name":"endTime.second"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record.endTime.tick","with":{"rawtext":[{"score":{"objective":"record","name":"endTime.tick"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record.hintUsed","with":{"rawtext":[{"score":{"objective":"record","name":"hintUsed"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record.mapCompletedTimes","with":{"rawtext":[{"score":{"objective":"record","name":"mapCompletedTimes"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record.progress.advancement","with":{"rawtext":[{"score":{"objective":"record","name":"progress.advancement"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record.progress.easterEgg","with":{"rawtext":[{"score":{"objective":"record","name":"progress.easterEgg"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record.progress.level","with":{"rawtext":[{"score":{"objective":"record","name":"progress.level"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record.progress.mapStage","with":{"rawtext":[{"score":{"objective":"record","name":"progress.mapStage"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record.progress.timeLimited","with":{"rawtext":[{"score":{"objective":"record","name":"progress.timeLimited"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record.skipUsed","with":{"rawtext":[{"score":{"objective":"record","name":"skipUsed"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.record.strategyUsed","with":{"rawtext":[{"score":{"objective":"record","name":"strategyUsed"}}]}}]}

## settings
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.settings"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.settings.developerMode","with":{"rawtext":[{"score":{"objective":"settings","name":"developerMode"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.settings.gameruleLock","with":{"rawtext":[{"score":{"objective":"settings","name":"gameruleLock"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.settings.hintEnabled","with":{"rawtext":[{"score":{"objective":"settings","name":"hintEnabled"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.settings.levelCompleteDelay","with":{"rawtext":[{"score":{"objective":"settings","name":"levelCompleteDelay"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.settings.level30Dialogue","with":{"rawtext":[{"score":{"objective":"settings","name":"level30Dialogue"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.settings.mapTime","with":{"rawtext":[{"score":{"objective":"settings","name":"mapTime"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.settings.oplevel","with":{"rawtext":[{"score":{"objective":"settings","name":"oplevel"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.settings.scoreboardDisplay","with":{"rawtext":[{"score":{"objective":"settings","name":"scoreboardDisplay"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.settings.speedrunMode","with":{"rawtext":[{"score":{"objective":"settings","name":"speedrunMode"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.settings.skipEnabled","with":{"rawtext":[{"score":{"objective":"settings","name":"skipEnabled"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.settings.strategyEnabled","with":{"rawtext":[{"score":{"objective":"settings","name":"strategyEnabled"}}]}}]}

## time
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.time"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.time.currentMinute","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.time.currentSecond","with":{"rawtext":[{"score":{"objective":"time","name":"currentSecond"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.time.dialogue","with":{"rawtext":[{"score":{"objective":"time","name":"dialogue"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.time.endStage2.fireworkTimer","with":{"rawtext":[{"score":{"objective":"time","name":"endStage2.fireworkTimer"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.time.levelCompleteDelay","with":{"rawtext":[{"score":{"objective":"time","name":"levelCompleteDelay"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.time.mainHall.actionbarTitleSecond","with":{"rawtext":[{"score":{"objective":"time","name":"mainHall.actionbarTitleSecond"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.time.mainHall.resetMapWarningCountdown","with":{"rawtext":[{"score":{"objective":"time","name":"mainHall.resetMapWarningCountdown"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.time.remainingTime","with":{"rawtext":[{"score":{"objective":"time","name":"remainingTime"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.time.settingCenter.developerModeWarningCountdown","with":{"rawtext":[{"score":{"objective":"time","name":"settingCenter.developerModeWarningCountdown"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.time.settingCenter.resetMapWarningCountdown","with":{"rawtext":[{"score":{"objective":"time","name":"settingCenter.resetMapWarningCountdown"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.time.settingCenter.resetRecordWarningCountdown","with":{"rawtext":[{"score":{"objective":"time","name":"settingCenter.resetRecordWarningCountdown"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.time.sound","with":{"rawtext":[{"score":{"objective":"time","name":"sound"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.time.tick","with":{"rawtext":[{"score":{"objective":"time","name":"tick"}}]}}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.time.timeline","with":{"rawtext":[{"score":{"objective":"time","name":"timeline"}}]}}]}

## 标签型变量
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"functions.developer.query.variables.succeed.tags"}]}

# 当权限等级不为2时，执行失败
tellraw @s[scores={oplevel=!2}] {"rawtext":[{"translate":"feedback.error.oplevel_too_low"}]}

# 当权限等级为2时，反馈

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line1"}]}
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line2"}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advGetStarted] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line3"},{"translate":" | stats.advGetStarted = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advMoreSkilled] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line4"},{"translate":" | stats.advMoreSkilled = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advHalfWay] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line5"},{"translate":" | stats.advHalfWay = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advTheEnd] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line6"},{"translate":" | stats.advTheEnd = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advAnotherWay] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line7"},{"translate":" | stats.advAnotherWay = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advWhyPlaceIronLikeThis] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line8"},{"translate":" | stats.advWhyPlaceIronLikeThis = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advWhiteMobsAnywhere] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line9"},{"translate":" | stats.advWhiteMobsAnywhere = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advBug] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line10"},{"translate":" | stats.advBug = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advLuckyDog] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line11"},{"translate":" | stats.advLuckyDog = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advNoDolls] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line12"},{"translate":" | stats.advNoDolls = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line13"}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advEasterEggFound] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line14"},{"translate":" | stats.advEasterEggFound = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advYes] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line15"},{"translate":" | stats.advYes = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advNotAParkour] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line16"},{"translate":" | stats.advNotAParkour = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advSuperLike] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line17"},{"translate":" | stats.advSuperLike = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advIronman] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line18"},{"translate":" | stats.advIronman = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line19"}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advBrewingMaster] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line20"},{"translate":" | stats.advBrewingMaster = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advRedstoneMaster] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line21"},{"translate":" | stats.advRedstoneMaster = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advSurviveMaster] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line22"},{"translate":" | stats.advSurviveMaster = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advEmerald] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line23"},{"translate":" | stats.advEmerald = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advButton] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line24"},{"translate":" | stats.advButton = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advButtonAgain] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line25"},{"translate":" | stats.advButtonAgain = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advNoMoreButton] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line26"},{"translate":" | stats.advNoMoreButton = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advSoFast] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line27"},{"translate":" | stats.advSoFast = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advHowCanYouSpeedrun] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line28"},{"translate":" | stats.advHowCanYouSpeedrun = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advTheRealEnd] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line29"},{"translate":" | stats.advTheRealEnd = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line30"}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advLetMeSee] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line31"},{"translate":" | stats.advLetMeSee = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advCelebration] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line32"},{"translate":" | stats.advCelebration = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advWho] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line33"},{"translate":" | stats.advWho = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advDiy] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line34"},{"translate":" | stats.advDiy = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

scoreboard players set @e[name=advancement] backend -1
scoreboard players operation @e[name=advancement] backend = @e[name=advAppreciateAndWatch] stats
tellraw @s[scores={oplevel=2}] {"rawtext":[{"translate":"feedback.developer.advancement_query.line35"},{"translate":" | stats.advAppreciateAndWatch = %%s","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=advancement]"}}]}}]}

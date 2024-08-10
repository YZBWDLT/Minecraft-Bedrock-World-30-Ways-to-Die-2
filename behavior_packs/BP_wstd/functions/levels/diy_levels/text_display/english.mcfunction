# ===== 英文展示文本 =====

# --- 重置展示文本 ---

kill @e[type=wstd:text_display]

# --- 自定义关卡向导 ---

execute if score diyLevels.step data matches 1 run summon wstd:text_display "§b§lWelcome to the DIY Levels!" -109.9 5.5 -16
execute if score diyLevels.step data matches 1 run summon wstd:text_display "§bThis is a guide for the DIY Levels!" -109.9 4.9 -16
execute if score diyLevels.step data matches 1 run summon wstd:text_display "§bThis guide will help you learn how to create your own levels~" -109.9 4.6 -16
execute if score diyLevels.step data matches 1 run summon wstd:text_display "§aUse §eNext§a to see the next step" -109.9 4.3 -16
execute if score diyLevels.step data matches 1 run summon wstd:text_display "§aUse §eBack§a to see the previous step" -109.9 4.0 -16
execute if score diyLevels.step data matches 1 run summon wstd:text_display "§aUse §eQuit Level§a to return to the hall" -109.9 3.7 -16

execute if score diyLevels.step data matches 2 run summon wstd:text_display "§b§lActivity Range Limit" -109.9 5.8 -16
execute if score diyLevels.step data matches 2 run summon wstd:text_display "§bSurely you've noticed those §e\"red walls\"§b!" -109.9 5.2 -16
execute if score diyLevels.step data matches 2 run summon wstd:text_display "§bThose are §eBorders§b, they §eprevent non-creative mode" -109.9 4.9 -16
execute if score diyLevels.step data matches 2 run summon wstd:text_display "§eplayers from crossing over from above or below§b!" -109.9 4.6 -16

execute if score diyLevels.step data matches 2 run summon wstd:text_display "§bAlso, this map has restrictions on movement in creative mode..." -109.9 4.3 -16
execute if score diyLevels.step data matches 2 run summon wstd:text_display "§bThat's this large area §einside the borders§b!" -109.9 4.0 -16
execute if score diyLevels.step data matches 2 run summon wstd:text_display "§bAlso, there are §eheight restrictions§b, with barriers blocking you" -109.9 3.7 -16
execute if score diyLevels.step data matches 2 run summon wstd:text_display "§bThis is your activity range (32*32*32), remember not to leave," -109.9 3.4 -16
execute if score diyLevels.step data matches 2 run summon wstd:text_display "§byou will be §eteleported back automatically§b!" -109.9 3.1 -16

execute if score diyLevels.step data matches 3 run summon wstd:text_display "§b§lCreate a New Empty Room" -109.9 5.5 -16
execute if score diyLevels.step data matches 3 run summon wstd:text_display "§bOnce we're ready, it's time to §ecreate a room§b!" -109.9 4.9 -16
execute if score diyLevels.step data matches 3 run summon wstd:text_display "§bYou can §eempty your current room and apply a new" -109.9 4.6 -16
execute if score diyLevels.step data matches 3 run summon wstd:text_display "§eroom size§b using the §e\"Change Room Size\"§b item!" -109.9 4.3 -16
execute if score diyLevels.step data matches 3 run summon wstd:text_display "§bWe have §e3 preset sizes§b for you to choose from~" -109.9 4.0 -16
execute if score diyLevels.step data matches 3 run summon wstd:text_display "§bIf not satisfied, build your own §ewithin our limits§b!" -109.9 3.7 -16
execute if score diyLevels.step data matches 3 run summon wstd:text_display "§bIt might be tiring but worth it! awa" -109.9 3.4 -16

execute if score diyLevels.step data matches 4 run summon wstd:text_display "§b§lSet Up The Scene" -109.9 5.8 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§bHave gameplay ideas in mind?" -109.9 5.2 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§bWell... let's make a void death level first!" -109.9 4.9 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§bIt's easy, just open a hole in the floor!" -109.9 4.6 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§bOnce you §eenter the game mode, all barriers limiting" -109.9 4.3 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§ethe height of the level will disappear, becoming a real void§b~" -109.9 4.0 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§bSetting up the scene is quite free, but please §epay attention§b:" -109.9 3.7 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§c* Boats and ender pearls are not allowed!" -109.9 3.4 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§c* Players will be locked in adventure mode during the game." -109.9 3.1 -16
execute if score diyLevels.step data matches 4 run summon wstd:text_display "§c* Please don't make cross-dimensional levels!" -109.9 2.8 -16

execute if score diyLevels.step data matches 5 run summon wstd:text_display "§b§lSave Changes" -109.9 5.8 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§bOnce everything is ready, we can save your masterpiece!" -109.9 5.2 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§bUse the §e\"Save Level\"§b item to save the level you created§b!" -109.9 4.9 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§bEach time you enter this level, the" -109.9 4.6 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§blevel you saved last time will be loaded~" -109.9 4.3 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§bSo don't worry about having to redo anything~ヽ(✿ﾟ▽ﾟ)ノ" -109.9 4.0 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§bIf you want to §eplay your own level§b, you" -109.9 3.7 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§bcan §equit level and switch to game mode§b!" -109.9 3.4 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§bIn game mode, you can enter this level as a player. It's that simple~" -109.9 3.1 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§aNext, we'll guide you in creating advanced DIY levels. Stay tuned!" -109.9 2.8 -16
execute if score diyLevels.step data matches 5 run summon wstd:text_display "§c* exiting the level won't save your level! Save before exiting!" -109.9 2.5 -16

execute if score diyLevels.step data matches 6 run summon wstd:text_display "§b§lUsing Time Limited Levels" -109.9 6.1 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§bWould you like your level to become a \"time limited level\"? ヾ(•ω•`)o" -109.9 5.5 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§bLet's take a look at the §eCommand System§b behind you..." -109.9 5.2 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§bYou should see a command block called \"Time Limit\", right?" -109.9 4.9 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§bLet's open it, and here's the built-in command:" -109.9 4.6 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§bscoreboard players set remainingTime time §e-1" -109.9 4.3 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§bWe're interested in the last §e-1§b, which stands for §eDisabling timed" -109.9 4.0 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§elevels§b!Setting any negative number will disable time limitations (￣▽￣)" -109.9 3.7 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§bChange this -1 to §eany positive number§b, and it will set the" -109.9 3.4 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§btime limit for this level! The unit is in secondsヾ(^▽^*)))" -109.9 3.1 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§bEnabling timed levels will also automatically play the timed level" -109.9 2.8 -16
execute if score diyLevels.step data matches 6 run summon wstd:text_display "§bmusic §eafter entering the level§b, isn't it considerate? φ(゜▽゜*)♪" -109.9 2.5 -16

execute if score diyLevels.step data matches 7 run summon wstd:text_display "§b§lCommand System" -109.9 6.2 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§bWe also offer support for the command system! The command" -109.9 5.75 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§bblocks behind you are the command system for this level..." -109.9 5.50 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§bQuite neat, isn't it? In fact, we've simplified" -109.9 5.25 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§bmany tedious and repetitive steps for you~!" -109.9 5.00 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§bIf you understand commands, you can modify them based on this~" -109.9 4.75 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§bYou can also adjust the permission level to 2 in the settings center," -109.9 4.50 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§bwhich will provide you with more underlying map features~" -109.9 4.25 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§bIf you can't figure out how to write it, you can" -109.9 4.00 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§brefer to our pre-set levels (DIY Level 6~10)!" -109.9 3.75 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§cTo ensure map stability, please make sure the command system" -109.9 3.50 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§cyou write has no bugs and will not affect other levels!" -109.9 3.25 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§cExiting the level will automatically clear the nearby area," -109.9 3.00 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§cso don't scatter the command blocks too much~" -109.9 2.75 -16
execute if score diyLevels.step data matches 7 run summon wstd:text_display "§cAlso, please do not move the position of the preset command blocks!" -109.9 2.50 -16

execute if score diyLevels.step data matches 8 run summon wstd:text_display "§b§lEnd of DIY Level Guide" -109.9 5.8 -16
execute if score diyLevels.step data matches 8 run summon wstd:text_display "§bYou can now start creating your own levels!" -109.9 4.9 -16
execute if score diyLevels.step data matches 8 run summon wstd:text_display "§bYou can also share your levels with others," -109.9 4.6 -16
execute if score diyLevels.step data matches 8 run summon wstd:text_display "§beven if it's just a screenshot, getting more people" -109.9 4.3 -16
execute if score diyLevels.step data matches 8 run summon wstd:text_display "§binvolved can double the fun!" -109.9 4.0 -16
execute if score diyLevels.step data matches 8 run summon wstd:text_display "§bHave fun~" -109.9 3.5 -16

# --- 命令方块注释 ---

## 启动与重启命令组
summon wstd:text_display "§b(Re)Start" -103 1.9 -12
summon wstd:text_display "§bCommands" -103 1.6 -12
summon wstd:text_display "§aAll levels" -104 2.9 -12
summon wstd:text_display "§aCommon Func" -104 2.6 -12
summon wstd:text_display "§aTitle Cmds" -105 2.6 -12
summon wstd:text_display "§aTp Players" -106 2.6 -12
summon wstd:text_display "§aTime Limit" -107 2.6 -12

## 退出功能命令组
summon wstd:text_display "§bQuit" -103 1.9 -13
summon wstd:text_display "§bCommands" -103 1.6 -13

## 提示命令组
summon wstd:text_display "§bHint" -103 1.9 -14
summon wstd:text_display "§bCommands" -103 1.6 -14
summon wstd:text_display "§aHint text" -104 2.6 -14

## 攻略命令组
summon wstd:text_display "§bStrategy" -103 1.9 -15
summon wstd:text_display "§bCommands" -103 1.6 -15
summon wstd:text_display "§aStrategy Text" -104 2.6 -15

## 跳过命令组
summon wstd:text_display "§bSkip" -103 1.9 -16
summon wstd:text_display "§bCommands" -103 1.6 -16
summon wstd:text_display "§aSkip Cmd" -104 2.6 -16

## 关卡结束命令组
summon wstd:text_display "§bLvl complete" -103 1.9 -17
summon wstd:text_display "§bCommands" -103 1.6 -17
summon wstd:text_display "§aDeath message" -104 2.6 -17
summon wstd:text_display "§aAll levels" -105 2.9 -17
summon wstd:text_display "§aCommon Func" -105 2.6 -17

## 快捷栏标题命令组
summon wstd:text_display "§bActionbar Title" -103 1.9 -18
summon wstd:text_display "§bCommands" -103 1.6 -18
summon wstd:text_display "§aActionbar Title" -104 2.6 -18

## 标题命令
summon wstd:text_display "§aTitle Cmds" -103 1.9 -20
summon wstd:text_display "§aTitle Time" -104 2.6 -20
summon wstd:text_display "§aTitle" -105 2.6 -20
summon wstd:text_display "§aSubtitle" -106 2.6 -20

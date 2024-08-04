# ===== 英文展示文本 =====

# --- 重置展示文本 ---

kill @e[type=wstd:text_display]

# --- 传送到起始屋与结束屋 ---
summon wstd:text_display "§bTp to End Room" 21 10 29
summon wstd:text_display "§bTp to Start Room" -39 10 29

# --- 结束屋阻挡文本 ---
# 在完成主线前显示
execute if score progress.mapStage record matches 0 run summon wstd:text_display "§cOops..." -38.9 9.2 27
execute if score progress.mapStage record matches 0 run summon wstd:text_display "§6Complete all 30 mainline levels" -38.9 8.9 27
execute if score progress.mapStage record matches 0 run summon wstd:text_display "§6to unlock the end room!" -38.9 8.6 27

# --- 起始屋 ---

## 公告板
summon wstd:text_display "§6§lWelcome to §c30 Ways to Die §62!" 28 12.2 23.1
summon wstd:text_display "§3Enter the particle to start the level!" 28 11.6 23.1
summon wstd:text_display "§3Right-click (long press for mobile) on items to activate them!" 28 11.3 23.1
### 彩蛋位置提示 | 共6行，1~2行为0~14关，3行为15~25关，4行为26~29关，5行为主线结束后，6行为发现后
execute if score progress.easterEgg record matches -1 if score progress.level record matches 0..14 run summon wstd:text_display "§3Find Easter eggs in the hall and keep searching!" 28 11.0 23.1
execute if score progress.easterEgg record matches -1 if score progress.level record matches 31..32 run summon wstd:text_display "§3Find Easter eggs in the hall and keep searching!" 28 11.0 23.1
execute if score progress.easterEgg record matches -1 if score progress.level record matches 15..25 run summon wstd:text_display "§cEaster Egg location hint: Right in the starting room~" 28 11.0 23.1
execute if score progress.easterEgg record matches -1 if score progress.level record matches 26..29 run summon wstd:text_display "§cEaster Egg location hint: It’s connected to that painting...I mean, the map~" 28 11.0 23.1
execute if score progress.easterEgg record matches -1 if score progress.mapStage record matches 1..2 run summon wstd:text_display "§cEaster Egg location hint: You can actually go through that map qwq" 28 11.0 23.1
execute if score progress.easterEgg record matches 0..10 run summon wstd:text_display "§3Easter Egg Found! Complete all levels for all advancements!" 28 11.0 23.1
summon wstd:text_display "§3Random tips in the hall might help you make advancements!" 28 10.7 23.1
summon wstd:text_display "§3Thanks to ZiMin and other UPs for their support!" 28 10.4 23.1
summon wstd:text_display "§3If the map lags, comment with your device model to help me improve the map!" 28 10.1 23.1
summon wstd:text_display "§cRemember, this is just a game, don’t imitate in real life! QAQ" 28 9.8 23.1
summon wstd:text_display "§3Enjoy playing!ヽ(✿ﾟ▽ﾟ)ノ" 28 9.5 23.1
summon wstd:text_display "§aApologies for the translation error, the author is from China QwQ" 28 9.0 23.1
summon wstd:text_display "§aML=Mainline Levels | EE=Easter Egg | TL=Time Limited" 28 8.7 23.1
## 地图
summon wstd:text_display "§l§c30 Ways to Die§62 §b2.4 MAP" 28 13.0 31.9
# 地图玩法 | 当完成3关后显示
execute if score progress.level record matches 3.. run summon wstd:text_display "§bHow to play" 24 10 30

# --- 结束屋 ---

## 信标提示 | 在完成主线后，但在完成全进度后停止显示
execute if score progress.mapStage record matches 1 run summon wstd:text_display "§bML" -47 10 28
execute if score progress.mapStage record matches 1 run summon wstd:text_display "§dEE" -47 10 26
execute if score progress.mapStage record matches 1 run summon wstd:text_display "§eTL" -45 10 28
execute if score progress.mapStage record matches 1 run summon wstd:text_display "§6Advs" -45 10 26
## 作者名 | 在完成全进度后显示
execute if score progress.mapStage record matches 2 run summon wstd:text_display "§l§bAuthor §r§f| §eYZBWDLT" -49.9 9.2 27
execute if score progress.mapStage record matches 2 run summon wstd:text_display "§l§bCo-Author §r§f| §eAndy7343" -46 9.2 31.9
execute if score progress.mapStage record matches 2 run summon wstd:text_display "§l§bSpecial Thanks §r§f| §exhduoduobaby" -46 9.2 23.1
## 结束屋功能显示 | 在完成全进度后显示
execute if score progress.mapStage record matches 2 run summon wstd:text_display "§6Play End Music" -50 10 30
execute if score progress.mapStage record matches 2 run summon wstd:text_display "§6Replay End Effects" -50 10 24
execute if score progress.mapStage record matches 2 run summon wstd:text_display "§cReset Map" -46 10 27

# ===== 英文展示文本 =====

# --- 清除展示文本 ---

kill @e[type=wstd:text_display]

# --- 展示内容 ---

## 地图规则与玩法 Q&A
summon wstd:text_display "§6Rule, play and" -98 20.2 49
summon wstd:text_display "§6Q&A of the map" -98 19.9 49

## 地图难度与语言设定
summon wstd:text_display "§6Difficulty and" -100 20.2 49
summon wstd:text_display "§6Language Settings" -100 19.9 49

## 第30关对话设定
summon wstd:text_display "§bLevel 30 Dialogue" -102 20.2 49
execute if score level30Dialogue settings matches 1..2 run summon wstd:text_display "§aNow: On" -102 19.9 49
execute if score level30Dialogue settings matches 0 run summon wstd:text_display "§cNow: Off" -102 19.9 49

## gamerule锁定设定
summon wstd:text_display "§bGamerule Locker" -104 20.2 49
execute if score gameruleLock settings matches 1 run summon wstd:text_display "§aNow: On" -104 19.9 49
execute if score gameruleLock settings matches 0 run summon wstd:text_display "§cNow: Off" -104 19.9 49

## 结束特效的烟花设定
summon wstd:text_display "§6Firework Settings" -106 20.2 49
summon wstd:text_display "§6for End Effect" -106 19.9 49

## 地图时间设定
summon wstd:text_display "§bMap Time" -108 20.2 49
execute if score mapTime settings matches 0 run summon wstd:text_display "§bNow: Day" -108 19.9 49
execute if score mapTime settings matches 1 run summon wstd:text_display "§bNow: Night in FT" -108 19.9 49
execute if score mapTime settings matches 2 run summon wstd:text_display "§bNow: Night" -108 19.9 49
execute if score mapTime settings matches 3 run summon wstd:text_display "§bNow: Time Flows" -108 19.9 49

## 关卡完成延时设定
summon wstd:text_display "§bLevel Completed Delay" -98 20.2 43
execute if score levelCompleteDelay settings matches 0 run summon wstd:text_display "§cNow: No Delay" -98 19.9 43
execute if score levelCompleteDelay settings matches 1 run summon wstd:text_display "§cNow: Some 0.25s" -98 19.9 43
execute if score levelCompleteDelay settings matches 2 run summon wstd:text_display "§bNow: Some 0.50s" -98 19.9 43
execute if score levelCompleteDelay settings matches 3 run summon wstd:text_display "§bNow: Some 0.75s" -98 19.9 43
execute if score levelCompleteDelay settings matches 4 run summon wstd:text_display "§bNow: Some 1.00s" -98 19.9 43
execute if score levelCompleteDelay settings matches 5 run summon wstd:text_display "§bNow: Some 1.25s" -98 19.9 43
execute if score levelCompleteDelay settings matches 6 run summon wstd:text_display "§cNow: All 0.25s" -98 19.9 43
execute if score levelCompleteDelay settings matches 7 run summon wstd:text_display "§bNow: All 0.50s" -98 19.9 43
execute if score levelCompleteDelay settings matches 8 run summon wstd:text_display "§bNow: All 0.75s" -98 19.9 43
execute if score levelCompleteDelay settings matches 9 run summon wstd:text_display "§bNow: All 1.00s" -98 19.9 43
execute if score levelCompleteDelay settings matches 10 run summon wstd:text_display "§bNow: All 1.25s" -98 19.9 43

## 浏览地图
summon wstd:text_display "§6Explore Map" -100 20.2 43

## 记分板显示设定
summon wstd:text_display "§bScoreboard Display" -102 20.2 43
execute if score scoreboardDisplay settings matches 0 run summon wstd:text_display "§bNow: Hided" -102 19.9 43
execute if score scoreboardDisplay settings matches 1 run summon wstd:text_display "§bNow: Partly" -102 19.9 43
execute if score scoreboardDisplay settings matches 2 run summon wstd:text_display "§bNow: Completely" -102 19.9 43

## 速通模式设定
summon wstd:text_display "§bSpeedrun Mode" -104 20.2 43
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§aNow: On" -104 19.9 43
execute if score speedrunMode settings matches 0 run summon wstd:text_display "§cNow: Off" -104 19.9 43

## 权限等级设定与高级功能
summon wstd:text_display "§6Permission Level &" -106 20.2 43
summon wstd:text_display "§6Advanced Settings" -106 19.9 43

## 关于本地图
summon wstd:text_display "§6About" -108 20.2 43

## 恢复所有设置为默认
summon wstd:text_display "§bDefault Settings" -109 20.2 46
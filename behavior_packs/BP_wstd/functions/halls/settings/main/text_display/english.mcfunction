# ===== 英文展示文本 =====

# --- 清除展示文本 ---

kill @e[type=wstd:text_display]

# --- 非速通模式 ---

## 地图难度设定
summon wstd:text_display "§6Difficulty Settings &" -100 20.2 49
summon wstd:text_display "§6Speedrun Mode" -100 19.9 49

## 杂项设置
summon wstd:text_display "§6Miscellaneous" -104 20.2 49
summon wstd:text_display "§6Settings" -104 19.9 49

## 关于本地图
summon wstd:text_display "§6About" -100 20.2 43

## 权限等级设定与高级功能
summon wstd:text_display "§6Permission Level &" -104 20.2 43
summon wstd:text_display "§6Advanced Settings" -104 19.9 43

## 恢复所有设置为默认
summon wstd:text_display "§bDefault Settings" -109 20.2 46

# --- 速通模式 ---

## 地图难度设定与速通模式
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§6Difficulty Settings &" -98 20.2 49
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§6Speedrun Mode" -98 19.9 49

## 杂项设置
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§6Miscellaneous" -100 20.2 49
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§6Settings" -104 19.9 49

## 制作人
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§bCredits" -104 20.2 49

## 预览地图
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§6Preview Map" -106 20.2 49

## 关于本地图
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§6About" -98 20.2 43

## 权限等级设定与高级功能
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§6Permission Level &" -100 20.2 43
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§6Advanced Settings" -100 19.9 43

## 速通模式设定
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§bSpeedrun Mode" -104 20.2 43
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§aNow: On" -104 19.9 43

## 第30关对话设定
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§bLevel 30 Dialogue" -106 20.2 43
execute if score speedrunMode settings matches 1 if score level30Dialogue settings matches 1..2 run summon wstd:text_display "§aNow: On" -106 19.9 43
execute if score speedrunMode settings matches 1 if score level30Dialogue settings matches 0 run summon wstd:text_display "§cNow: Off" -106 19.9 43

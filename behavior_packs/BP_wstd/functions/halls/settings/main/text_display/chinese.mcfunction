# ===== 中文展示文本 =====

# --- 清除展示文本 ---

kill @e[type=wstd:text_display]

# --- 非速通模式 ---

## 地图难度设定与速通模式
execute if score speedrunMode settings matches 0 run summon wstd:text_display "§6地图难度设定" -100 20.2 49
execute if score speedrunMode settings matches 0 run summon wstd:text_display "§6与速通模式" -100 19.9 49

## 杂项设置
execute if score speedrunMode settings matches 0 run summon wstd:text_display "§6杂项设置" -104 20.2 49

## 关于本地图
execute if score speedrunMode settings matches 0 run summon wstd:text_display "§6关于本地图" -100 20.2 43

## 权限等级设定与高级功能
execute if score speedrunMode settings matches 0 run summon wstd:text_display "§6权限等级设定" -104 20.2 43
execute if score speedrunMode settings matches 0 run summon wstd:text_display "§6与高级功能" -104 19.9 43

## 恢复所有设置为默认
summon wstd:text_display "§b恢复所有设置为默认" -109 20.2 46

# --- 速通模式 ---

## 地图难度设定与速通模式
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§6地图难度设定" -98 20.2 49
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§6与速通模式" -98 19.9 49

## 杂项设置
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§6杂项设置" -100 20.2 49

## 制作人
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§b制作人" -104 20.2 49

## 预览地图
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§6预览地图" -106 20.2 49

## 关于本地图
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§6关于本地图" -98 20.2 43

## 权限等级设定与高级功能
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§6权限等级设定" -100 20.2 43
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§6与高级功能" -100 19.9 43

## 速通模式设定
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§b速通模式设定" -104 20.2 43
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§a当前：开" -104 19.9 43

## 第30关对话设定
execute if score speedrunMode settings matches 1 run summon wstd:text_display "§b第30关对话设定" -106 20.2 43
execute if score speedrunMode settings matches 1 if score level30Dialogue settings matches 1..2 run summon wstd:text_display "§a当前：开" -106 19.9 43
execute if score speedrunMode settings matches 1 if score level30Dialogue settings matches 0 run summon wstd:text_display "§c当前：关" -106 19.9 43

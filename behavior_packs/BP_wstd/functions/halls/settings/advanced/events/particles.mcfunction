# ===== 粒子效果 =====
# 该命令需每秒执行一次

# --- 高级设置 ---

## 权限等级设置
particle wstd:light_blue -98 18 49

## 更改游戏模式 | 仅限权限等级大于等于1时出现
execute if score oplevel settings matches 1.. run particle wstd:light_blue -100 18 49
execute if score oplevel settings matches 1.. run particle wstd:light_blue -102 18 49

## 关卡完成延时设定 | 延时设定为0~0.25秒时（作为警告），settings.levelCompleteDelay = 0..1 or 6；延时设定为更高时，settings.levelCompleteDelay = 2..5 or 7..10
execute if score levelCompleteDelay settings matches 0..1 run particle wstd:red -104 18 49
execute if score levelCompleteDelay settings matches 6 run particle wstd:red -104 18 49

execute if score levelCompleteDelay settings matches 2..5 run particle wstd:light_blue -104 18 49
execute if score levelCompleteDelay settings matches 7..10 run particle wstd:light_blue -104 18 49

## gamerule锁定设定 | 关闭为红，开启为绿
execute if score gameruleLock settings matches 0 run particle wstd:red -106 18 49
execute if score gameruleLock settings matches 1 run particle wstd:green -106 18 49

## 重置地图
particle wstd:red -108 18 49

# --- 开发者设置 ---

## 开发者模式设置 | 关闭为绿，开启为红
execute if score developerMode settings matches 0 run particle wstd:green -98 18 43
execute if score developerMode settings matches 1 run particle wstd:red -98 18 43

## 解锁关卡 | 仅限开发者模式启用后出现
execute if score developerMode settings matches 1 run particle wstd:light_blue -100 18 43
execute if score developerMode settings matches 1 run particle wstd:light_blue -102 18 43
execute if score developerMode settings matches 1 run particle wstd:light_blue -104 18 43

## 解锁进度 | 仅限开发者模式启用后出现
execute if score developerMode settings matches 1 run particle wstd:light_blue -106 18 43

## 重置地图记录 | 仅限开发者模式启用后出现
execute if score developerMode settings matches 1 run particle wstd:red -108 18 43

# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 非速通模式 ---
# 只显示4个基本的设置类

## 粒子设定 | 每秒执行1次
execute if score speedrunMode settings matches 0 if score tick time matches 0 run function halls/settings/main/events/particles

## 玩家进入检测 | 用于判断玩家是否走进粒子光束中
execute if score speedrunMode settings matches 0 run function halls/settings/main/events/enter_test

## 复制展示框
execute if score speedrunMode settings matches 0 if score tick time matches 1 run clone -98 16 49 -109 16 43 -109 21 43

# --- 速通模式 ---

## 粒子设定 | 每秒执行1次
execute if score speedrunMode settings matches 1 if score tick time matches 0 run function halls/settings/main/events/particles_speedrun

## 玩家进入检测 | 用于判断玩家是否走进粒子光束中
execute if score speedrunMode settings matches 1 run function halls/settings/main/events/enter_test_speedrun

## 复制展示框
execute if score speedrunMode settings matches 1 if score tick time matches 2 run clone -98 17 49 -109 17 43 -109 21 43

# --- 展示文本 ---
execute if score language data matches 0 if score tick time matches 3 run function halls/settings/main/text_display/chinese
execute if score language data matches 1 if score tick time matches 3 run function halls/settings/main/text_display/english


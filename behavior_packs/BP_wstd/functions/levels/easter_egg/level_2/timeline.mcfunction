# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 粒子 ---
execute if score tick time matches 6 run function levels/easter_egg/level_2/events/particle

# --- 各问题的独立时间线 ---

## 第0个问题
execute if score easterEgg2.totalScore data matches -1 run function levels/easter_egg/level_2/events/timeline_question_0
## 第1个问题
execute if score easterEgg2.totalScore data matches 0 run function levels/easter_egg/level_2/events/timeline_question_1
## 第2个问题
execute if score easterEgg2.totalScore data matches 1 run function levels/easter_egg/level_2/events/timeline_question_2
## 第3个问题
execute if score easterEgg2.totalScore data matches 2 run function levels/easter_egg/level_2/events/timeline_question_3
## 第4个问题
execute if score easterEgg2.totalScore data matches 3 run function levels/easter_egg/level_2/events/timeline_question_4
## 第5个问题
execute if score easterEgg2.totalScore data matches 4 run function levels/easter_egg/level_2/events/timeline_question_5

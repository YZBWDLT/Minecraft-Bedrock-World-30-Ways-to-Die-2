# ===== 函数列表 | 下一步 =====
# 列出该列表是为了在某些情况下可以降低命令的同时执行数，以进行优化。
# 使用下一步物品时执行此命令。

## -17 | 阅读规则 | 使用下一步时，进入选择难度阶段
execute if score level data matches -17 run function halls/open/stage_3/events/next_step

## -15 | 下界异常 | 使用下一步时，传送回主世界
execute if score level data matches -15 run function halls/dimension_error/back_to_overworld

## -14 | 烟花教程 | 使用下一步时，增加步骤
execute if score level data matches -14 run function halls/record/firework/events/next_step

## -5 | 烟花秀设置 | 使用下一步时，保存结构并返回到大厅
execute if score level data matches -5 run function halls/settings/firework/save_and_quit

## -1 | DIY关卡大厅 | 使用下一步时，在游戏模式与编辑模式之间切换
execute if score level data matches -1 run function halls/hub/diy/functions/switch_mode

## 36 | 限时第1关 | 读取结构
execute if score level data matches 36 run function levels/time_limited/level_1/events/reload_resources

## 38 | 限时第3关 | 召唤鸡
execute if score level data matches 38 run function levels/time_limited/level_3/events/summon_chicken

## 39 | 限时第4关 | 下一步以开始游戏，或生成生物
execute if score level data matches 39 run function levels/time_limited/level_4/events/summon_entity

## 40 | 限时第5关 | 下一步以开始游戏
execute if score level data matches 40 run function levels/time_limited/level_5/events/start_game

## 51~60 | DIY关卡 - 编辑模式 | 使用下一步时，增加步骤
execute if score level data matches 51..60 if score diyLevels.isEditMode data matches 1 run function levels/diy_levels/functions/next_step

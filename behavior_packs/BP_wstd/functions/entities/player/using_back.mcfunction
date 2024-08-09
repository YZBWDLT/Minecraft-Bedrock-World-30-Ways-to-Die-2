# ===== 使用物品时 =====
# 当玩家使用物品“返回”时触发

# --- 使用情况不在预期内时 ---
execute unless score level data matches -14..0 unless score level data matches 51..60 run tellraw @s {"rawtext":[{"translate":"chat.error.invalid_level_id.not_expected","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=level]"}}]}}]}
execute unless score level data matches -14..0 unless score level data matches 51..60 run clear @s wstd:back

# --- 使用情况在预期内时 ---

# -14 | 从烟花教程返回 | 返回到上一步
execute if score level data matches -14 run function halls/record/firework/events/previous_step

# -13 | 从结束特效返回 | 触发返回函数
execute if score level data matches -13 run function halls/end/stage_2/events/start_stage_3

# -12~-10 | 从进度中心、统计中心和设置中心返回 | 触发返回大厅函数
execute if score level data matches -12..-10 run function halls/hub/main/start

# -9~-4 | 从子设置项返回 | 触发返回设置中心的函数
execute if score level data matches -9 run function halls/settings/about/quit
execute if score level data matches -8 run function halls/settings/explore_map/quit
execute if score level data matches -7 run function halls/settings/question_and_answer/quit
execute if score level data matches -6 run function halls/settings/difficulty/quit
execute if score level data matches -5 run function halls/settings/firework/quit
execute if score level data matches -4 run function halls/settings/advanced/quit

# -3~0 | 从各大厅返回 | 触发返回大厅的函数
execute if score level data matches -3..0 run function halls/hub/main/start

## 51~60 | DIY关卡 - 编辑模式 | 使用返回时，减少步骤
execute if score level data matches 51..60 if score diyLevel.isEditMode data matches 1 run function levels/diy_levels/functions/previous_step

# --- 对于一切可能的情况，都执行的内容 ---

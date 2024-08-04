# ===== 上一步 =====

# --- 显示下一个向导 ---

## 控制要显示什么向导
scoreboard players remove diyLevels.step data 1
execute if score diyLevels.step data matches 9.. run scoreboard players set diyLevels.step data 1

## 重新显示展示文本
execute if score language settings matches 0 run function levels/diy_levels/text_display/chinese
execute if score language settings matches 1 run function levels/diy_levels/text_display/english

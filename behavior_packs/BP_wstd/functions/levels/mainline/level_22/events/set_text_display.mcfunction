# ===== 设置展示文本 =====

## 当最后的方块被挖开后，显示展示文本
kill @e[type=wstd:text_display]
execute if score language settings matches 0 run function levels/mainline/level_22/text_display/chinese
execute if score language settings matches 1 run function levels/mainline/level_22/text_display/english

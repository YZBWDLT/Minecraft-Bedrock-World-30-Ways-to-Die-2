# ===== 英文展示文本 =====

# --- 结束按钮处 ---
# 当玩家挖开最后的方块后，判断玩家有没有按钮，输出不同内容

## 按钮已在混凝土上方时
execute if score hided2.endBlockBroken data matches 1 if block -60 22 106 stone_button ["facing_direction"=2] run summon wstd:text_display "§bLET'S GO!!" -60 21 106
## 按钮未在混凝土上方，但玩家已有按钮
execute if score hided2.endBlockBroken data matches 1 if block -60 22 106 air if entity @a[hasitem={item=stone_button}] run summon wstd:text_display "§aPut the button here!" -60 21 106
## 按钮未在混凝土上方，且玩家没有按钮
execute if score hided2.endBlockBroken data matches 1 if block -60 22 106 air unless entity @a[hasitem={item=stone_button}] run summon wstd:text_display "§cButton?" -60 21 106

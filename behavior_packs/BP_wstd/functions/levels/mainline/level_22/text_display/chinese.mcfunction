# ===== 中文展示文本 =====

# --- 常规内容 ---

summon wstd:text_display "§6灰常简单的啦~(￣▽￣)" 16 21 96
summon wstd:text_display "§7别把没用的东西都拿光了，别怪我没提醒你（" 16 20.7 96

# --- 结束按钮处 ---
# 当玩家挖开最后的方块后，判断玩家有没有按钮，输出不同内容

## 按钮已在混凝土上方时
execute if score level22.endBlockBroken data matches 1 if block 19 22 112 stone_button ["facing_direction"=2] run summon wstd:text_display "§b按下按钮吧！" 19 21 112
## 按钮未在混凝土上方，但玩家已有按钮
execute if score level22.endBlockBroken data matches 1 if block 19 22 112 air if entity @a[hasitem={item=stone_button}] run summon wstd:text_display "§a放下按钮吧！" 19 21 112
## 按钮未在混凝土上方，且玩家没有按钮
execute if score level22.endBlockBroken data matches 1 if block 19 22 112 air unless entity @a[hasitem={item=stone_button}] run summon wstd:text_display "§c按钮呢？" 19 21 112

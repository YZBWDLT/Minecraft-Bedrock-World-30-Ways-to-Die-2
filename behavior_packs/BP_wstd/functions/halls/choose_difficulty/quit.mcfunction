# 进入大厅，正式开始游戏

# ===== 触发大厅函数 =====
function halls/main_hall/start_level

# ===== 设置第1关的辅助功能设定 =====
summon je:marker "lvl1Hint" 0 2 0
summon je:marker "lvl1Strategy" 0 2 0
scoreboard players set @e[name=lvl1Hint] stats 0
scoreboard players set @e[name=lvl1Strategy] stats 0

# ===== 开启进度检测 =====
scoreboard players set @e[name=advancement] stats 0

# ===== tellraw提示 =====
tellraw @a {"rawtext":[{"translate":"%%s\n%%s","with":{"rawtext":[{"translate":"chat.open.end.line1"},{"translate":"chat.open.end.line2"}]}}]}

# ===== 播放音效 =====
scoreboard players set @e[name=soundPlayer] active 8

# ===== 开门 =====
fill 22 9 28 23 12 26 air[] destroy
kill @e[type=item]

# ===== 开放起始屋的彩蛋 =====
fill 29 10 33 27 12 33 wstd:fake_quartz_pillar

# ===== 开放结束屋的隐藏按钮 =====
fill -47 10 33 -45 12 33 wstd:fake_quartz_pillar
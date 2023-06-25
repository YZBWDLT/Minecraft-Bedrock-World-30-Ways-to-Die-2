# 先清除原有的显示文本
kill @e[type=wstd:text_display]

# 重新传送玩家
tp @a -62 22 -25 facing -69 22 -25

# 设置问题为4
scoreboard players set @e[name=counter] backend 4

# 显示新的显示文本
summon wstd:text_display "§64. 画有凋灵生成方法的画的画幅大小是4*3" -67 21.8 -25
summon wstd:text_display "§a一瞅就得对" -68 22.3 -23
summon wstd:text_display "§c一看就得废" -68 22.3 -27
# 先清除原有的显示文本
kill @e[type=wstd:text_display]

# 重新传送玩家
tp @a -62 22 -25 facing -69 22 -25

# 设置问题为2
scoreboard players set @e[name=counter] backend 2

# 显示新的显示文本
summon wstd:text_display "§62. 理论上，7个铜块最多可以得到28个切制铜块" -67 21.8 -25
summon wstd:text_display "§a我举双手赞同" -68 22.3 -23
summon wstd:text_display "§c开玩笑，怎么可能？" -68 22.3 -27
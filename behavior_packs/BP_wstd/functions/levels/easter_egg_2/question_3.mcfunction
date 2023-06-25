# 先清除原有的显示文本
kill @e[type=wstd:text_display]

# 重新传送玩家
tp @a -62 22 -25 facing -69 22 -25

# 设置问题为3
scoreboard players set @e[name=counter] backend 3

# 显示新的显示文本
summon wstd:text_display "§63. 用剪刀剪高草丛无法获得高草丛这个物品" -67 21.8 -25
summon wstd:text_display "§a有一说一，确实" -68 22.3 -23
summon wstd:text_display "§c有二说二，不对" -68 22.3 -27
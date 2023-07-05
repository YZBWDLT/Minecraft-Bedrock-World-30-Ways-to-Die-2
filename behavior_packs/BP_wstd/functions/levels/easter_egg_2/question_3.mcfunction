# 先清除原有的显示文本
kill @e[type=wstd:text_display]

# 重新传送玩家
tp @a -62 22 -25 facing -69 22 -25

# 设置问题为3
scoreboard players set @e[name=counter] backend 3

# 显示新的显示文本
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§63. 用剪刀剪高草丛无法获得高草丛这个物品" -67 21.8 -25
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a有一说一，确实" -68 22.3 -23
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§c有二说二，不对" -68 22.3 -27

execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§63. Using shears to cut tall grass will not get the item tall grass." -67 21.8 -25
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aWell... indeed." -68 22.3 -23
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§c...lleW FALSE!" -68 22.3 -27
# 先清除原有的显示文本
kill @e[type=wstd:text_display]

# 重新传送玩家
tp @a -62 22 -25 facing -69 22 -25

# 设置问题为4
scoreboard players set @e[name=counter] backend 4

# 显示新的显示文本
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§64. 画有凋灵生成方法的画的画幅大小是4*3" -67 21.8 -25
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a一瞅就得对" -68 22.3 -23
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§c一看就得废" -68 22.3 -27

execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§64. The Wither spawning painting is sized 4*3." -67 21.8 -25
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aHow right it is!" -68 22.3 -23
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§cWhat a wrong description!" -68 22.3 -27
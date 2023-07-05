# 先清除原有的显示文本
kill @e[type=wstd:text_display]

# 重新传送玩家
tp @a -62 22 -25 facing -69 22 -25

# 设置问题为1
scoreboard players set @e[name=counter] backend 1

# 显示新的显示文本
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§61. Warden 的标准中文译名是循声守卫" -67 21.8 -25
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a太对了哥！" -68 22.3 -23
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§c别扯了，根本不是" -68 22.3 -27

execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§61. The Warden's Chinese translation is 循声守卫" -67 21.8 -25
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aThat's correct!" -68 22.3 -23
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§cIt's incorrect!" -68 22.3 -27
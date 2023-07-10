## 检测按钮是否按下，按下后触发命令，进入开幕
execute @e[name=level,scores={backend=-20}] ~~~ detect 29 10 27 stone_button 13 function halls/open/start_level

## 检测语言设定
execute @e[name=ticker,scores={time=0}] ~~~ particle wstd:orange 24 8 30
execute @e[name=ticker,scores={time=0}] ~~~ kill @e[type=wstd:text_display]
execute @e[name=ticker,scores={time=0}] ~~~ summon wstd:text_display "§6更改语言" 24 10.2 30
execute @e[name=ticker,scores={time=0}] ~~~ summon wstd:text_display "§6Change language" 24 9.9 30

execute @a[x=24,y=9,z=30,r=0.75,c=1] ~~~ scoreboard players add @e[name=language] settings 1
execute @a[x=24,y=9,z=30,r=0.75,c=1] ~~~ scoreboard players set @e[name=language,scores={settings=!0..1}] settings 0
execute @a[x=24,y=9,z=30,r=0.75,c=1] ~~~ execute @e[name=language,scores={settings=0}] ~~~ function settings/language/chinese
execute @a[x=24,y=9,z=30,r=0.75,c=1] ~~~ execute @e[name=language,scores={settings=1}] ~~~ function settings/language/english
execute @a[x=24,y=9,z=30,r=0.75,c=1] ~~~ tp @a[x=24,y=9,z=30,r=0.75] 27 9 30
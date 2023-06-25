## 检测按钮是否按下，按下后触发命令，进入开幕
execute @e[name=level,scores={backend=-20}] ~~~ detect 29 10 27 minecraft:stone_button 13 function halls/open/start_level

execute @e[name=ticker,scores={time=0}] ~~~ particle wstd:orange 24 8 30
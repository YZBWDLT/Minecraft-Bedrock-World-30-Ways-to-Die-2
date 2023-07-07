function halls/main_hall/start_level
tp @a -41 9 27 facing -52 9 27
execute @e[name=language,scores={settings=0}] ~~~ scoreboard objectives setdisplay sidebar display ascending
execute @e[name=language,scores={settings=1}] ~~~ scoreboard objectives setdisplay sidebar display1 ascending

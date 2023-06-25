# 非网易版 -> music播放烟花秀音乐
execute @e[name=isNetease,scores={settings=0}] ~~~ music play firework_show 1 0 loop

# 网易版 -> playsound播放烟花秀音乐
execute @e[name=isNetease,scores={settings=1}] ~~~ stopsound @a
execute @e[name=isNetease,scores={settings=1}] ~~~ scoreboard players set @e[name=playsoundInterval] time 0
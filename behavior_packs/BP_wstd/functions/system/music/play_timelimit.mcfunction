# 非网易版 -> music播放速通音乐
execute @e[name=isNetease,scores={settings=0}] ~~~ music play timelimit 1 0 loop

# 网易版 -> playsound播放音乐
execute @e[name=isNetease,scores={settings=1}] ~~~ stopsound @a
execute @e[name=isNetease,scores={settings=1}] ~~~ scoreboard players set @e[name=playsoundInterval] time -1
# 非网易版 非速通模式 -> music播放正常音乐
execute @e[name=isNetease,scores={settings=0}] ~~~ execute @e[name=speedrunMode,scores={settings=0}] ~~~ music play maingame 1 0 loop

# 非网易版 速通模式 -> music播放速通音乐
execute @e[name=isNetease,scores={settings=0}] ~~~ execute @e[name=speedrunMode,scores={settings=1}] ~~~ music play timelimit 1 0 loop

# 网易版 -> playsound播放音乐
execute @e[name=isNetease,scores={settings=1}] ~~~ stopsound @a
execute @e[name=isNetease,scores={settings=1}] ~~~ scoreboard players set @e[name=playsoundInterval] time 0
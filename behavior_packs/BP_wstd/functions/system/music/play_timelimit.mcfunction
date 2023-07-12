# timelimit须在非速通模式下播放，速通模式下默认播放限时曲
# 不设定非速通模式会导致在速通模式下进入限时关卡会重新播放音乐

# 非网易版&非速通模式 -> music播放速通音乐
execute @e[name=isNetease,scores={settings=0}] ~~~ execute @e[name=speedrunMode,scores={settings=0}] ~~~ music play timelimit 1 0 loop

# 网易版&非速通模式 -> playsound播放音乐
execute @e[name=isNetease,scores={settings=1}] ~~~ execute @e[name=speedrunMode,scores={settings=0}] ~~~ stopsound @a
execute @e[name=isNetease,scores={settings=1}] ~~~ execute @e[name=speedrunMode,scores={settings=0}] ~~~ scoreboard players set @e[name=playsoundInterval] time -1
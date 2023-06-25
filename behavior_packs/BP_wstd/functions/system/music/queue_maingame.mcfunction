# 非网易版 非速通模式 -> music播放正常音乐
execute @e[name=isNetease,scores={settings=0}] ~~~ execute @e[name=speedrunMode,scores={settings=0}] ~~~ music queue maingame 1 0 loop

# 非网易版 速通模式 -> music播放速通音乐
execute @e[name=isNetease,scores={settings=0}] ~~~ execute @e[name=speedrunMode,scores={settings=1}] ~~~ music queue timelimit 1 0 loop
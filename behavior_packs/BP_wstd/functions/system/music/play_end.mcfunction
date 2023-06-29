# 非网易版 -> music播放速通音乐
execute @e[name=isNetease,scores={settings=0}] ~~~ music play end 1 0

# 网易版 -> playsound播放音乐（0：58）
execute @e[name=isNetease,scores={settings=1}] ~~~ scoreboard players set @e[name=playsoundInterval,scores={time=0..}] time 141
execute @e[name=isNetease,scores={settings=1}] ~~~ scoreboard players set @e[name=playsoundInterval,scores={time=..-1}] time -143
execute @e[name=isNetease,scores={settings=1}] ~~~ execute @a ~~~ stopsound @s
execute @e[name=isNetease,scores={settings=1}] ~~~ execute @a ~~~ playsound end @s ~~~ 1 1
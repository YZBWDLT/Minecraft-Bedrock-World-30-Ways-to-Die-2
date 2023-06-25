# 粒子设置
particle wstd:orange -98 18 49
particle wstd:orange -100 18 49
## 第30关对话设定
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ particle wstd:red -102 18 49
execute @e[name=level30Dialogue,scores={settings=1..2}] ~~~ particle wstd:green -102 18 49
## 游戏规则锁定设定
execute @e[name=gameruleLocker,scores={settings=0}] ~~~ particle wstd:red -104 18 49
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ particle wstd:green -104 18 49

particle wstd:orange -106 18 49
particle wstd:light_blue -108 18 49

execute @e[name=levelCompleteDelay,scores={settings=-5..5,settings=!-1..1}] ~~~ particle wstd:light_blue -98 18 43
execute @e[name=levelCompleteDelay,scores={settings=-1..1}] ~~~ particle wstd:red -98 18 43

particle wstd:orange -100 18 43
particle wstd:light_blue -102 18 43
## 速通模式设定
execute @e[name=speedrunMode,scores={settings=0}] ~~~ particle wstd:red -104 18 43
execute @e[name=speedrunMode,scores={settings=1}] ~~~ particle wstd:green -104 18 43
particle wstd:orange -106 18 43
particle wstd:orange -108 18 43

particle wstd:light_blue -109 18 46

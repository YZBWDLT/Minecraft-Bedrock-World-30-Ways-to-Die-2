particle wstd:light_blue -98 18 49
particle wstd:light_blue -100 18 49
particle wstd:light_blue -102 18 49
particle wstd:light_blue -104 18 49

execute @e[name=hintEnabled,scores={settings=0}] ~~~ particle wstd:red -100 18 43
execute @e[name=hintEnabled,scores={settings=1}] ~~~ particle wstd:green -100 18 43

execute @e[name=strategyEnabled,scores={settings=0}] ~~~ particle wstd:red -102 18 43
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ particle wstd:green -102 18 43

execute @e[name=skipEnabled,scores={settings=0}] ~~~ particle wstd:red -104 18 43
execute @e[name=skipEnabled,scores={settings=1}] ~~~ particle wstd:green -104 18 43

particle wstd:grey -108 18 49
particle wstd:grey -108 18 43

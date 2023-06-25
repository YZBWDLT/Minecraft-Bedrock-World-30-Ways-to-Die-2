# 权限等级
particle wstd:light_blue -98 18 49

# 游戏模式
particle wstd:light_blue -102 18 49
particle wstd:light_blue -104 18 49

# 开发者模式
execute @e[name=developerMode,scores={settings=0}] ~~~ particle wstd:green -108 18 49
execute @e[name=developerMode,scores={settings=1}] ~~~ particle wstd:red -108 18 49

particle wstd:light_blue -98 18 43

particle wstd:orange -108 18 43

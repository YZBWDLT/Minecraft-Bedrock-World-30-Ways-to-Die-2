# 权限等级
particle wstd:light_blue -98 18 49

# 开发者模式
execute @e[name=developerMode,scores={settings=0}] ~~~ particle wstd:green -98 18 43
execute @e[name=developerMode,scores={settings=1}] ~~~ particle wstd:red -98 18 43

# 适配模式
particle wstd:light_blue -108 18 49

# 重置地图
particle wstd:red -108 18 43

# 游戏模式 | 受权限等级影响
execute @a[scores={oplevel=1..},c=1] ~~~ particle wstd:light_blue -102 18 49
execute @a[scores={oplevel=1..},c=1] ~~~ particle wstd:light_blue -104 18 49

# 开发者模式子选项 | 受开发模式影响
execute @e[name=developerMode,scores={settings=1}] ~~~ particle wstd:light_blue -100 18 43
execute @e[name=developerMode,scores={settings=1}] ~~~ particle wstd:light_blue -102 18 43
execute @e[name=developerMode,scores={settings=1}] ~~~ particle wstd:light_blue -104 18 43
execute @e[name=developerMode,scores={settings=1}] ~~~ particle wstd:red -106 18 43


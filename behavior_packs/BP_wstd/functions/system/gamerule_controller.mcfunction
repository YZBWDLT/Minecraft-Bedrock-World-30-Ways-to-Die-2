# 全局游戏规则设定
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule commandblocksenabled true
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule dofiretick false
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule doimmediaterespawn true
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule doinsomnia false
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule domobloot false
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule domobspawning false
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule dotiledrops true
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule doweathercycle false
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule drowningdamage true
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule firedamage true
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule freezedamage true
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule functioncommandlimit 10000
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule keepinventory false
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule maxcommandchainlength 65535
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule naturalregeneration false
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule randomtickspeed 1
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule respawnblocksexplode true
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule showbordereffect true
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule spawnradius 0
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ gamerule tntexplodes false

# 特殊关卡游戏规则设定
## 非关卡模式时 - 关闭物品NBT标签，防止快捷栏标题与物品名遮挡
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ execute @e[name=level,scores={backend=!1..60}] ~~~ gamerule showtags false
execute @e[name=level,scores={backend=1..60}] ~~~ gamerule showtags true
## 主线第7关 - 不采用自定义死亡信息
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ execute @e[name=level,scores={backend=!7}] ~~~ gamerule showdeathmessages false
execute @e[name=level,scores={backend=7}] ~~~ gamerule showdeathmessages true
## 主线第13关第2部分 - 使矿车可以掉落
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ execute @e[name=level,scores={backend=!31}] ~~~ gamerule doentitydrops false
execute @e[name=level,scores={backend=31}] ~~~ gamerule doentitydrops true
## 主线第12关 - 玩家可以用箭射中自己 | 主线第24关 - 玩家可以用伤害药水伤害自己
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ execute @e[name=level,scores={backend=!12,backend=!24}] ~~~ gamerule pvp false
execute @e[name=level,scores={backend=12}] ~~~ gamerule pvp true
execute @e[name=level,scores={backend=24}] ~~~ gamerule pvp true
## 主线第25关 - 启用摔落伤害
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ execute @e[name=level,scores={backend=!25}] ~~~ gamerule falldamage false
execute @e[name=level,scores={backend=25}] ~~~ gamerule falldamage true
## 主线第27关 - 猪灵可以捡起物品
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ execute @e[name=level,scores={backend=!27}] ~~~ gamerule mobgriefing false
execute @e[name=level,scores={backend=27}] ~~~ gamerule mobgriefing true
## 自定义关卡编辑模式 - 启用坐标以方便创作者
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ execute @e[name=level,scores={backend=!51..60}] ~~~ gamerule showcoordinates false
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ gamerule showcoordinates false
execute @e[name=developerMode,scores={settings=0}] ~~~ execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ gamerule showcoordinates true

# 特殊设置下游戏规则设定
## 时间流逝 | 当settings.mapTime=3时为true，其他情况下为false | 结束特效时一律锁定为false
execute @e[name=level,scores={backend=!-13}] ~~~ execute @e[name=gameruleLocker,scores={settings=1}] ~~~ execute @e[name=mapTime,scores={settings=3}] ~~~ gamerule dodaylightcycle true
execute @e[name=level,scores={backend=!-13}] ~~~ execute @e[name=gameruleLocker,scores={settings=1}] ~~~ execute @e[name=mapTime,scores={settings=0..2}] ~~~ gamerule dodaylightcycle false
execute @e[name=level,scores={backend=-13}] ~~~ gamerule dodaylightcycle false

# 特殊模式游戏规则设定
## 开发者模式 - 开启坐标
execute @e[name=developerMode,scores={settings=1}] ~~~ gamerule showcoordinates true
## 非开发者模式 - 锁定关闭双命令反馈
execute @e[name=gameruleLocker,scores={settings=1}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ gamerule commandblockoutput false
execute @e[name=developerMode,scores={settings=0}] ~~~ gamerule sendcommandfeedback false

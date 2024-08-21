# ===== 函数列表 | 游戏规则（特殊关卡） =====
# 列出该列表是为了在某些情况下可以令关卡进行特别适配，以进行优化。

## 非关卡模式 | 关闭物品NBT标签，防止快捷栏标题与物品名遮挡
execute unless score level data matches 1..60 run gamerule showtags false
execute if score level data matches 1..60 run gamerule showtags true

## 第7关 | 不采用自定义死亡信息
execute unless score level data matches 7 run gamerule showdeathmessages false
execute if score level data matches 7 run gamerule showdeathmessages true

## 第12关/第24关 | 开启PVP以使得玩家可以用箭射中自己/开启PVP以使得玩家可以用伤害药水伤害自己
execute unless score level data matches 12 unless score level data matches 24 run gamerule pvp false
execute if score level data matches 12 run gamerule pvp true
execute if score level data matches 24 run gamerule pvp true

## 第13关第2部分 | 开启实体掉落以使得矿车可掉落
execute unless score level data matches 13 run gamerule doentitydrops true
execute if score level data matches 13 run gamerule doentitydrops false

## 第25关 | 启用摔落伤害
execute unless score level data matches 25 run gamerule falldamage false
execute if score level data matches 25 run gamerule falldamage true

## 第27关 | 猪灵可捡起物品
execute unless score level data matches 27 run gamerule mobgriefing false
execute if score level data matches 27 run gamerule mobgriefing true

## 自定义关卡编辑模式/开发者模式 | 开启坐标以方便创作者
execute if score developerMode settings matches 1 run gamerule showcoordinates true
execute if score developerMode settings matches 0 unless score level data matches 51..60 run gamerule showcoordinates false
execute if score developerMode settings matches 0 if score level data matches 51..60 if score diyLevels.isEditMode data matches 1 run gamerule showcoordinates true
execute if score developerMode settings matches 0 if score level data matches 51..60 unless score diyLevels.isEditMode data matches 1 run gamerule showcoordinates false

## 非开发者模式 | 锁定关闭双命令反馈
execute if score developerMode settings matches 0 run gamerule commandblockoutput false
execute if score developerMode settings matches 0 run gamerule sendcommandfeedback false

## 时间流逝 | 当玩家设置为时间流逝（settings.mapTime = 3）时启用 | 结束特效时一律锁定为false
execute if score mapTime settings matches 3 if score level data matches -13 run gamerule dodaylightcycle false
execute if score mapTime settings matches 3 unless score level data matches -13 run gamerule dodaylightcycle true
execute unless score mapTime settings matches 3 run gamerule dodaylightcycle false

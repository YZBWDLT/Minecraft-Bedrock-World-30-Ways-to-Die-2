# 不同阶段对应不同的结构
structure load firework_settings 5 20 -30

# 当地图时间设置为黑夜（settings.mapTime=1..2）时，放置海晶灯
execute @e[name=mapTime,scores={settings=1..2}] ~~~ setblock 7 20 -28 sealantern
execute @e[name=mapTime,scores={settings=1..2}] ~~~ setblock 13 20 -28 sealantern
execute @e[name=mapTime,scores={settings=1..2}] ~~~ setblock 13 20 -22 sealantern
execute @e[name=mapTime,scores={settings=1..2}] ~~~ setblock 7 20 -22 sealantern

# 不同阶段对应不同的展示文本
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b使用箱子里的材料合成你想要的烟花" 10 23.5 -28.9
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b将你合成的烟花放入§e发射器§b中以在烟花秀中生效" 10 23.2 -28.9
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b使用§e下一步§b以保存你的更改并返回" 10 22.9 -28.9
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b使用§e重置关卡§b以重置发射器到地图的默认状态" 10 22.6 -28.9
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b使用§e返回§b以回到设置中心，但不保存你的更改" 10 22.3 -28.9
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§c另外，请不要放奇怪的东西进去，只放烟花！" 10 22.0 -28.9

execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§f§l纸 & 火药" 7.3 21.2 -21
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§f§l染料" 7.3 21.2 -23
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§f§l图案材料" 7.3 21.2 -25
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§f§l特效材料" 7.3 21.2 -27

## 英文
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bCraft fireworks using materials in the chest" 10 23.8 -28.9
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bPut your crafted fireworks in the §eDispenser§b" 10 23.5 -28.9
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bto use them in the fireworks show" 10 23.2 -28.9
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bUse §e\"Next\"§b to save and return" 10 22.9 -28.9
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bUse §e\"Reset Level\"§b to reset the Launcher to default" 10 22.6 -28.9
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bUse §e\"Back\"§b to go back without saving" 10 22.3 -28.9
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§cNo strange items please, only fireworks!" 10 22.0 -28.9

execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§f§lPaper & Gunpowder" 7.3 21.2 -21
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§f§lDye" 7.3 21.2 -23
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§f§lPattern Materials" 7.3 21.2 -25
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§f§lSpecial Effects Materials" 7.3 21.2 -27
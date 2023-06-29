kill @e[type=wstd:text_display]

## ===== 未完成主线时 =====
execute @e[name=levelAdvancement,scores={stats=!30}] ~~~ summon wstd:text_display "§cOops..." -38.9 9.2 27
execute @e[name=levelAdvancement,scores={stats=!30}] ~~~ summon wstd:text_display "§6完成所有30个关卡，开启结束屋！" -38.9 8.9 27

## ===== 信标提示 =====
execute @e[name=levelAdvancement,scores={stats=30}] ~~~ summon wstd:text_display "§b主线" -47 10 28
execute @e[name=levelAdvancement,scores={stats=30}] ~~~ summon wstd:text_display "§d彩蛋" -47 10 26
execute @e[name=levelAdvancement,scores={stats=30}] ~~~ summon wstd:text_display "§e限时" -45 10 28
execute @e[name=levelAdvancement,scores={stats=30}] ~~~ summon wstd:text_display "§6进度" -45 10 26

## ===== 地图完成后的作者介绍 =====
execute @e[name=mapCompleted,scores={stats=2}] ~~~ summon wstd:creator -51 10 27 become_lt_pose
execute @e[name=mapCompleted,scores={stats=2}] ~~~ tp @e[x=-51,y=10,z=27,r=2,type=wstd:creator] -51 10 27 facing -40 10 27
execute @e[name=mapCompleted,scores={stats=2}] ~~~ replaceitem entity @e[x=-51,y=10,z=27,r=2,type=wstd:creator] slot.weapon.mainhand 0 command_block

execute @e[name=mapCompleted,scores={stats=2}] ~~~ summon wstd:creator -46 10 32 become_bd_pose
execute @e[name=mapCompleted,scores={stats=2}] ~~~ tp @e[x=-46,y=10,z=32,r=2,type=wstd:creator] -46 10 32 facing -46 10 20
execute @e[name=mapCompleted,scores={stats=2}] ~~~ replaceitem entity @e[x=-46,y=10,z=32,r=2,type=wstd:creator] slot.weapon.mainhand 0 diamond_pickaxe

execute @e[name=mapCompleted,scores={stats=2}] ~~~ summon wstd:creator -46 10 22 become_zy_pose
execute @e[name=mapCompleted,scores={stats=2}] ~~~ tp @e[x=-46,y=10,z=22,r=2,type=wstd:creator] -46 10 22 facing -46 10 32
execute @e[name=mapCompleted,scores={stats=2}] ~~~ replaceitem entity @e[x=-46,y=10,z=22,r=2,type=wstd:creator] slot.weapon.mainhand 0 structure_block

execute @e[name=mapCompleted,scores={stats=2}] ~~~ summon wstd:text_display "§l§b作者 §r§f| §e一只卑微的量筒" -49.9 9.2 27
execute @e[name=mapCompleted,scores={stats=2}] ~~~ summon wstd:text_display "§l§b联合作者 §r§f| §e狂野巴豆" -46 9.2 31.9
execute @e[name=mapCompleted,scores={stats=2}] ~~~ summon wstd:text_display "§l§b特别鸣谢 §r§f| §e祉语" -46 9.2 23.1

## ===== 地图完成后的部分入口 =====
execute @e[name=mapCompleted,scores={stats=2}] ~~~ summon wstd:text_display "§6播放结束音乐！" -50 10 30
execute @e[name=mapCompleted,scores={stats=2}] ~~~ summon wstd:text_display "§6重新播放结束特效" -50 10 24
execute @e[name=mapCompleted,scores={stats=2}] ~~~ summon wstd:text_display "§c重置地图" -46 10 27

## ===== 传送入口 =====
summon wstd:text_display "§b传送到结束屋" 21 10 29
summon wstd:text_display "§b传送到起始屋" -39 10 29

## ===== 大厅欢迎语 =====
summon wstd:text_display "§6§l欢迎来到§c30种死法§62！" 28 12.2 23.1
summon wstd:text_display "§3进入粒子束以开始关卡！" 28 11.6 23.1
summon wstd:text_display "§3右键（手机版长按）物品可以触发对应功能！" 28 11.3 23.1
execute @e[name=easterEggAdvancement,scores={stats=0}] ~~~ execute @e[name=levelAdvancement,scores={stats=0..32,stats=!15..30}] ~~~ summon wstd:text_display "§3大厅里有彩蛋哦~加油找找看吧~" 28 11.0 23.1
execute @e[name=easterEggAdvancement,scores={stats=0}] ~~~ execute @e[name=levelAdvancement,scores={stats=15..25}] ~~~ summon wstd:text_display "§c彩蛋位置提示：就在这个起始屋哦~" 28 11.0 23.1
execute @e[name=easterEggAdvancement,scores={stats=0}] ~~~ execute @e[name=levelAdvancement,scores={stats=26..29}] ~~~ summon wstd:text_display "§c彩蛋位置提示：和那个画...哦不，地图有关系哦~" 28 11.0 23.1
execute @e[name=easterEggAdvancement,scores={stats=0}] ~~~ execute @e[name=levelAdvancement,scores={stats=30}] ~~~ summon wstd:text_display "§c彩蛋位置提示：那个地图是可以穿过去的qwq" 28 11.0 23.1
execute @e[name=easterEggAdvancement,scores={stats=40..50}] ~~~ summon wstd:text_display "§3看来你也发现彩蛋啦=w= 完成所有关卡，然后努力完成所有进度吧！" 28 11.0 23.1
summon wstd:text_display "§3在大厅会轮播一些随机提示，其中有一些可能是你未完成进度的突破口哦~" 28 10.7 23.1
summon wstd:text_display "§3感谢岷叔和其他愿意给这个地图录视频的UP主们的支持！" 28 10.4 23.1
summon wstd:text_display "§3如果地图太卡了的话，可以在评论区留言一下你的设备型号，以助我改进地图~" 28 10.1 23.1
summon wstd:text_display "§c请注意这只是游戏，不要在现实世界做类似的事情！！！千万不要那样QAQ" 28 9.8 23.1
summon wstd:text_display "§3就这些啦，祝游戏愉快！ヽ(✿ﾟ▽ﾟ)ノ" 28 9.5 23.1

summon wstd:text_display "§l§c30种死法§62 §b2.3 地图" 28 13.0 31.9
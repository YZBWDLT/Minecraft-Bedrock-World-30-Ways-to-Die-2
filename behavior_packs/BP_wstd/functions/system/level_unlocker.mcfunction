# 关卡解锁器

## ===== 检测玩家是否按下彩蛋关卡的按钮，以解锁彩蛋关卡 | 彩蛋关卡进度为0时即为未按下，40时为已按下 =====
execute @e[name=easterEggAdvancement,scores={stats=0}] ~~~ detect 28 11 35 stone_button 10 function halls/easter_egg_hall/unlock

## ===== 检测玩家是否满足限时关卡解锁的条件 =====
execute @e[name=timeLimitedAdvancement,scores={stats=0}] ~~~ execute @e[name=easterEggAdvancement,scores={stats=48..50}] ~~~ execute @e[name=levelAdvancement,scores={stats=30}] ~~~ function halls/time_limited_hall/unlock

## ===== 第30关开启后，播放音效 | 在stats.levelAdvancement=29~30且settings.level30Dialogue = 2时播放，播放后自动调整为1 =====
execute @e[name=levelAdvancement,scores={stats=29..30}] ~~~ execute @e[name=level30Dialogue,scores={settings=2}] ~~~ scoreboard players set @e[name=soundPlayer] active 6
execute @e[name=levelAdvancement,scores={stats=29..30}] ~~~ execute @e[name=level30Dialogue,scores={settings=2}] ~~~ scoreboard players set @s settings 1

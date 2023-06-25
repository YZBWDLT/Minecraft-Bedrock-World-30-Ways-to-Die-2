# 每1秒释放1次粒子
execute @e[name=ticker,scores={time=0}] ~~~ function halls/setting_center/particle_settings

# 设置项检测

## === Q&A ===
execute @a[x=-98,y=19,z=49,r=1] ~~~ function halls/questions_and_answers/start_level

## === 难度与语言设定 ===
execute @a[x=-100,y=19,z=49,r=1] ~~~ function halls/difficulty_and_language/start_level

## === 第30关对话 ===
execute @a[x=-102,y=19,z=49,r=1] ~~~ function settings/level_30_dialogue
execute @a[x=-102,y=19,z=49,r=1] ~~~ function halls/setting_center/text_display
execute @a[x=-102,y=19,z=49,r=1] ~~~ tp @s -102 19 46

## === 游戏规则锁定设置 ===
execute @a[x=-104,y=19,z=49,r=1] ~~~ function settings/gamerule_locker
execute @a[x=-104,y=19,z=49,r=1] ~~~ function halls/setting_center/text_display
execute @a[x=-104,y=19,z=49,r=1] ~~~ tp @s -104 19 46

## === 难度与语言设定 ===
execute @a[x=-106,y=19,z=49,r=1] ~~~ function halls/firework_settings/start_level

## === 地图时间设置 ===
execute @a[x=-108,y=19,z=49,r=1] ~~~ function settings/map_time
execute @a[x=-108,y=19,z=49,r=1] ~~~ function halls/setting_center/text_display
execute @a[x=-108,y=19,z=49,r=1] ~~~ tp @s -108 19 46

## === 关卡延时设置 ===
execute @a[x=-98,y=19,z=43.5,r=1] ~~~ function settings/level_complete_delay
execute @a[x=-98,y=19,z=43.5,r=1] ~~~ function halls/setting_center/text_display
execute @a[x=-98,y=19,z=43.5,r=1] ~~~ tp @s -98 19 46

## === 浏览本地图 ===
execute @a[x=-100,y=19,z=43.5,r=1] ~~~ function halls/explore_map/start_level

## === 记分板显示设置 ===
execute @a[x=-102,y=19,z=43.5,r=1] ~~~ function settings/scoreboard_display
execute @a[x=-102,y=19,z=43.5,r=1] ~~~ function halls/setting_center/text_display
execute @a[x=-102,y=19,z=43.5,r=1] ~~~ tp @s -102 19 46

## === 高级设置 ===
execute @a[x=-106,y=19,z=43.5,r=1] ~~~ function halls/advanced_settings/start_level

## === 速通设置 ===
execute @a[x=-104,y=19,z=43,r=1] ~~~ function settings/speedrun_mode
execute @a[x=-104,y=19,z=43,r=1] ~~~ function halls/setting_center/text_display
execute @a[x=-104,y=19,z=43,r=1] ~~~ tp @s -104 19 46

## === 关于本地图 ===
execute @a[x=-108,y=19,z=43.5,r=1] ~~~ function halls/about/start_level

## === 记分板显示设置 ===
execute @a[x=-109,y=19,z=46,r=1] ~~~ function settings/reset_settings
execute @a[x=-109,y=19,z=46,r=1] ~~~ function halls/setting_center/text_display
execute @a[x=-109,y=19,z=46,r=1] ~~~ tp @s -106 19 46

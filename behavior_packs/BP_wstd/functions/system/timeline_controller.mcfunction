# 关卡时间线控制器

## === 添加时间 | 当active.timeline=1时执行 ===
scoreboard players add @e[name=timeline,scores={active=1}] time 1

## === 需要时间线的关卡ID列表 ===

### -20 | 开始屋
execute @e[name=level,scores={backend=-20}] ~~~ function halls/starting_room/timeline

### -19 | 开幕时
execute @e[name=level,scores={backend=-19}] ~~~ function halls/open/timeline

### -18 | 教程关卡
execute @e[name=level,scores={backend=-18}] ~~~ function levels/level_tutorial/timeline

### -16 | 选择难度时
execute @e[name=level,scores={backend=-16}] ~~~ function halls/choose_difficulty/timeline

### -14 | 烟花教程
execute @e[name=level,scores={backend=-14}] ~~~ function halls/firework_tutorial/timeline

### -13 | 第一次结束主线时 | 刚刚完成30个关卡，但是还没有记录时 stats.mapCompleted = 0
execute @e[name=level,scores={backend=-13}] ~~~ execute @e[name=mapCompleted,scores={stats=0}] ~~~ function halls/end/mainline_completed/timeline

### -13 | 第一次结束地图时 | 刚刚完成30个进度，但是还没有记录时&重新观看结束特效时 stats.mapCompleted = 1~2
execute @e[name=level,scores={backend=-13}] ~~~ execute @e[name=mapCompleted,scores={stats=1..2}] ~~~ function halls/end/advancements_completed/timeline

### -10 | 设置中心相关时间线
execute @e[name=level,scores={backend=-10}] ~~~ function halls/setting_center/timeline

### -9 | 关于本地图相关时间线
execute @e[name=level,scores={backend=-9}] ~~~ function halls/about/timeline

### -8 | 浏览地图相关时间线
execute @e[name=level,scores={backend=-8}] ~~~ function halls/explore_map/timeline

### -7 | 关于本地图相关时间线
execute @e[name=level,scores={backend=-7}] ~~~ function halls/questions_and_answers/timeline

### -6 | 难度与语言设置相关时间线
execute @e[name=level,scores={backend=-6}] ~~~ function halls/difficulty_and_language/timeline

### -5 | 烟花秀设置相关时间线
execute @e[name=level,scores={backend=-5}] ~~~ function halls/firework_settings/timeline

### -4 | 高级设置相关时间线
execute @e[name=level,scores={backend=-4}] ~~~ function halls/advanced_settings/timeline

### -3 | 限时大厅相关时间线
execute @e[name=level,scores={backend=-3}] ~~~ function halls/time_limited_hall/timeline

### -2 | 彩蛋大厅相关时间线
execute @e[name=level,scores={backend=-2}] ~~~ function halls/easter_egg_hall/timeline

### -1 | DIY大厅相关时间线
execute @e[name=level,scores={backend=-1}] ~~~ function halls/diy_hall/timeline

### 0 | 大厅相关时间线
execute @e[name=level,scores={backend=0}] ~~~ function halls/main_hall/timeline

### 1~32 | 主线关卡
execute @e[name=level,scores={backend=7}] ~~~ function levels/level_7/timeline
execute @e[name=level,scores={backend=9}] ~~~ function levels/level_9/timeline
execute @e[name=level,scores={backend=10}] ~~~ function levels/level_10/timeline
execute @e[name=level,scores={backend=11}] ~~~ function levels/level_11/timeline
execute @e[name=level,scores={backend=13}] ~~~ function levels/level_13/part_1/timeline
execute @e[name=level,scores={backend=17}] ~~~ function levels/level_17/timeline
execute @e[name=level,scores={backend=18}] ~~~ function levels/level_18/timeline
execute @e[name=level,scores={backend=20}] ~~~ function levels/level_20/timeline
execute @e[name=level,scores={backend=22}] ~~~ function levels/level_22/timeline
execute @e[name=level,scores={backend=24}] ~~~ function levels/level_24/timeline
execute @e[name=level,scores={backend=26}] ~~~ function levels/level_26/timeline
execute @e[name=level,scores={backend=30}] ~~~ function levels/level_30/timeline
execute @e[name=level,scores={backend=31}] ~~~ function levels/level_13/part_2/timeline
execute @e[name=level,scores={backend=32}] ~~~ function levels/level_13/part_3/timeline

### 35 | 隐藏关卡
execute @e[name=level,scores={backend=35}] ~~~ function levels/hided_3/timeline

### 36~40 | 限时关卡
execute @e[name=level,scores={backend=36}] ~~~ function levels/time_limited_1/timeline
execute @e[name=level,scores={backend=37}] ~~~ function levels/time_limited_2/timeline
execute @e[name=level,scores={backend=38}] ~~~ function levels/time_limited_3/timeline
execute @e[name=level,scores={backend=39}] ~~~ function levels/time_limited_4/timeline
execute @e[name=level,scores={backend=40}] ~~~ function levels/time_limited_5/timeline

### 41~50 | 彩蛋关卡
execute @e[name=level,scores={backend=41}] ~~~ function levels/easter_egg_1/timeline
execute @e[name=level,scores={backend=42}] ~~~ function levels/easter_egg_2/timeline
execute @e[name=level,scores={backend=43}] ~~~ function levels/easter_egg_3/timeline
execute @e[name=level,scores={backend=44}] ~~~ function levels/easter_egg_4/timeline
execute @e[name=level,scores={backend=45}] ~~~ function levels/easter_egg_5/timeline
execute @e[name=level,scores={backend=46}] ~~~ function levels/easter_egg_6/timeline
execute @e[name=level,scores={backend=47}] ~~~ function levels/easter_egg_7/timeline
execute @e[name=level,scores={backend=48}] ~~~ function levels/easter_egg_8/timeline
execute @e[name=level,scores={backend=50}] ~~~ function levels/easter_egg_10/timeline

### 51^60 | 自定义关卡
execute @e[name=level,scores={backend=51..60}] ~~~ function levels/diy_levels/timeline

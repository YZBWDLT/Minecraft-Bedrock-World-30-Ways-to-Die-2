# 功能性物品给予器

# -14 | 烟花教程 | 必要物品：下一步、返回、退出关卡
execute @e[name=level,scores={backend=-14}] ~~~ give @a[hasitem={item=wstd:next_step,quantity=0}] wstd:next_step 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={backend=-14}] ~~~ give @a[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={backend=-14}] ~~~ give @a[hasitem={item=wstd:quit,quantity=0}] wstd:quit 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

# -12~-10 | 设置统计与进度中心 | 必要物品：返回
execute @e[name=level,scores={backend=-12..-10}] ~~~ give @a[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

# -9~-4 | 子设置项 | 必要物品：返回
execute @e[name=level,scores={backend=-9..-4}] ~~~ give @a[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

# -5 | 烟花设置 | 必要物品：下一步、返回（已在上面给予）、重置
execute @e[name=level,scores={backend=-5}] ~~~ give @a[hasitem={item=wstd:next_step,quantity=0}] wstd:next_step 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={backend=-5}] ~~~ give @a[hasitem={item=wstd:reset,quantity=0}] wstd:reset 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

# -3~-1 | 三大子大厅 | 必要物品：返回
execute @e[name=level,scores={backend=-3..-1}] ~~~ give @a[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

# -1 | DIY关卡大厅 | 必要物品：返回（已在上面给予）、下一步
execute @e[name=level,scores={backend=-1}] ~~~ give @a[hasitem={item=wstd:next_step,quantity=0}] wstd:next_step 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

# 0 | 大厅
## --- 彩蛋关卡 | 当解锁后给予 ---
execute @e[name=level,scores={backend=0}] ~~~ execute @e[name=easterEggAdvancement,scores={stats=40..50}] ~~~ give @a[hasitem={item=wstd:easter_egg_hall,quantity=0}] wstd:easter_egg_hall 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
## --- 限时关卡 | 当解锁后给予 ---
execute @e[name=level,scores={backend=0}] ~~~ execute @e[name=timeLimitedAdvancement,scores={stats=35..40}] ~~~ give @a[hasitem={item=wstd:time_limited_hall,quantity=0}] wstd:time_limited_hall 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
## --- 自定义关卡 | 当解锁后给予 ---
execute @e[name=level,scores={backend=0}] ~~~ execute @e[name=levelAdvancement,scores={stats=30}] ~~~ give @a[hasitem={item=wstd:diy_hall,quantity=0}] wstd:diy_hall 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
## --- 统计中心 | 当解锁后给予 ---
execute @e[name=level,scores={backend=0}] ~~~ execute @e[name=levelAdvancement,scores={stats=30}] ~~~ give @a[hasitem={item=wstd:stats_center,quantity=0}] wstd:stats_center 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
## --- 进度中心 ---
execute @e[name=level,scores={backend=0}] ~~~ give @a[hasitem={item=wstd:advancement_center,quantity=0}] wstd:advancement_center 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
## --- 设置中心 ---
execute @e[name=level,scores={backend=0}] ~~~ give @a[hasitem={item=wstd:setting_center,quantity=0}] wstd:setting_center 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
## --- 烟花教程 | 当解锁后给予 ---
execute @e[name=level,scores={backend=0}] ~~~ execute @e[name=levelAdvancement,scores={stats=30}] ~~~ give @a[hasitem={item=wstd:firework_tutorial,quantity=0}] wstd:firework_tutorial 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
## --- 播放音乐 ---
execute @e[name=level,scores={backend=0}] ~~~ give @a[hasitem={item=wstd:play_music,quantity=0}] wstd:play_music 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
## --- 游玩时间 | 当解锁后给予 ---
execute @e[name=level,scores={backend=0}] ~~~ execute @e[name=mapCompleted,scores={stats=1..}] ~~~ give @a[hasitem={item=wstd:played_time,quantity=0}] wstd:played_time 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

# 1~50 | 主线关卡、彩蛋关卡与限时关卡 | 必要物品：重置关卡、退出关卡
execute @e[name=level,scores={backend=1..50,backend=!30}] ~~~ give @a[hasitem={item=wstd:reset,quantity=0}] wstd:reset 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={backend=1..50,backend=!30}] ~~~ give @a[hasitem={item=wstd:quit,quantity=0}] wstd:quit 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
## 第30关，作者对话时不给予
execute @e[name=level,scores={backend=30}] ~~~ execute @e[name=level30Dialogue,scores={settings=0}] ~~~ give @a[hasitem={item=wstd:reset,quantity=0}] wstd:reset 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={backend=30}] ~~~ execute @e[name=level30Dialogue,scores={settings=0}] ~~~ give @a[hasitem={item=wstd:quit,quantity=0}] wstd:quit 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

# 51~60 | 自定义关卡 - 编辑模式（必须在加载完后给予） | 必要物品：下一步、返回、退出关卡、更改房间大小、重置命令系统、保存关卡、加载关卡
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ give @a[hasitem={item=wstd:next_step,quantity=0}] wstd:next_step 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ give @a[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ give @a[hasitem={item=wstd:quit,quantity=0}] wstd:quit 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ give @a[hasitem={item=wstd:change_room_size,quantity=0}] wstd:change_room_size 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ give @a[hasitem={item=wstd:reset_command_system,quantity=0}] wstd:reset_command_system 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ give @a[hasitem={item=wstd:save_level,quantity=0}] wstd:save_level 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ give @a[hasitem={item=wstd:load_level,quantity=0}] wstd:load_level 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

# 51~60 | 自定义关卡 - 游戏模式（必须在加载完后给予） | 必要物品：重置、退出关卡、提示、跳过、攻略
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ give @a[hasitem={item=wstd:reset,quantity=0}] wstd:reset 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ give @a[hasitem={item=wstd:quit,quantity=0}] wstd:quit 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a[hasitem={item=wstd:hint,quantity=0}] wstd:hint 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a[hasitem={item=wstd:strategy,quantity=0}] wstd:strategy 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ give @a[hasitem={item=wstd:skip,quantity=0}] wstd:skip 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

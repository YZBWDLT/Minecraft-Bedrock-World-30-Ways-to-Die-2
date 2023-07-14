# ===== 等待区 =====

## 对等待区的玩家锁定冒险模式
gamemode adventure @a[x=3,y=8,z=2,dx=2,dy=2,dz=2]

## 计时器
scoreboard players remove @e[name=diyIsLoading,scores={backend=0..}] backend 1
scoreboard players remove @e[name=diyIsSaving,scores={backend=0..}] backend 1

## 加载结构前清除物品 | 编辑模式&游戏模式
execute @e[name=diyIsLoading,scores={backend=104}] ~~~ clear @a wstd:change_room_size
execute @e[name=diyIsLoading,scores={backend=104}] ~~~ clear @a wstd:load_level
execute @e[name=diyIsLoading,scores={backend=104}] ~~~ clear @a wstd:reset_command_system
execute @e[name=diyIsLoading,scores={backend=104}] ~~~ clear @a wstd:save_level
execute @e[name=diyIsLoading,scores={backend=104}] ~~~ clear @a wstd:back
execute @e[name=diyIsLoading,scores={backend=104}] ~~~ clear @a wstd:next_step
execute @e[name=diyIsLoading,scores={backend=104}] ~~~ clear @a wstd:quit
execute @e[name=diyIsLoading,scores={backend=104}] ~~~ clear @a ender_pearl
## 加载结构前改玩家模式并传送玩家到等待区 | 编辑模式&游戏模式
execute @e[name=diyIsLoading,scores={backend=103}] ~~~ gamemode adventure @a
execute @e[name=diyIsLoading,scores={backend=103}] ~~~ tp @a 4 8 3
## 加载结构前在结构上下方放置屏障/空气 | 编辑模式&游戏模式
execute @e[name=diyIsLoading,scores={backend=102}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ fill -101 0 -10 -132 0 -41 air
execute @e[name=diyIsLoading,scores={backend=102}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ fill -101 32 -10 -132 32 -41 air
execute @e[name=diyIsLoading,scores={backend=102}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ fill -101 0 -10 -132 0 -41 barrier
execute @e[name=diyIsLoading,scores={backend=102}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ fill -101 32 -10 -132 32 -41 barrier
## 加载结构前提醒玩家开始加载 | 编辑模式
execute @e[name=diyIsLoading,scores={backend=102}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.diy_levels.load_level.start_loading"}]}
## 加载结构 | 编辑模式&游戏模式
execute @e[name=diyIsLoading,scores={backend=100}] ~~~ function levels/diy_levels/load_level
## 加载完成后激活命令系统区域的启动游戏 | 游戏模式
execute @e[name=diyIsLoading,scores={backend=5}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ setblock -103 2 -12 redstone_block
## 加载完成后的倒计时提醒 | 编辑模式&游戏模式
execute @e[name=diyIsLoading,scores={backend=1}] ~~~ tellraw @a[x=3,y=8,z=2,dx=2,dy=2,dz=2] {"rawtext":[{"translate":"chat.diy_levels.load_level.complete"}]}
## 加载完成后将玩家传送回自定义关卡区域 | 编辑模式&游戏模式
execute @e[name=diyIsLoading,scores={backend=0}] ~~~ function levels/diy_levels/back_to_diy_area

## 保存结构前清除物品 | 编辑模式
execute @e[name=diyIsSaving,scores={backend=104}] ~~~ clear @a wstd:change_room_size
execute @e[name=diyIsSaving,scores={backend=104}] ~~~ clear @a wstd:load_level
execute @e[name=diyIsSaving,scores={backend=104}] ~~~ clear @a wstd:reset_command_system
execute @e[name=diyIsSaving,scores={backend=104}] ~~~ clear @a wstd:save_level
execute @e[name=diyIsSaving,scores={backend=104}] ~~~ clear @a wstd:back
execute @e[name=diyIsSaving,scores={backend=104}] ~~~ clear @a wstd:next_step
execute @e[name=diyIsSaving,scores={backend=104}] ~~~ clear @a wstd:quit
execute @e[name=diyIsSaving,scores={backend=104}] ~~~ clear @a wstd:reset
execute @e[name=diyIsSaving,scores={backend=104}] ~~~ clear @a wstd:hint
execute @e[name=diyIsSaving,scores={backend=104}] ~~~ clear @a wstd:strategy
execute @e[name=diyIsSaving,scores={backend=104}] ~~~ clear @a wstd:skip
execute @e[name=diyIsSaving,scores={backend=104}] ~~~ clear @a ender_pearl
## 保存结构前改玩家模式并传送玩家到等待区 | 编辑模式
execute @e[name=diyIsSaving,scores={backend=103}] ~~~ gamemode adventure @a
execute @e[name=diyIsSaving,scores={backend=103}] ~~~ tp @a 4 8 3
## 保存结构前清除展示文本并提醒玩家开始保存 | 编辑模式
execute @e[name=diyIsSaving,scores={backend=102}] ~~~ kill @e[type=wstd:text_display]
execute @e[name=diyIsSaving,scores={backend=102}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.diy_levels.save_level.start_saving"}]} 
## 保存结构 | 编辑模式
execute @e[name=diyIsSaving,scores={backend=100}] ~~~ function levels/diy_levels/save_level
## 保存完成后的倒计时提醒 | 编辑模式
execute @e[name=diyIsSaving,scores={backend=1}] ~~~ tellraw @a[x=3,y=8,z=2,dx=2,dy=2,dz=2] {"rawtext":[{"translate":"chat.diy_levels.save_level.complete"}]}
## 保存完成后将玩家传送回自定义关卡区域 | 编辑模式
execute @e[name=diyIsSaving,scores={backend=0}] ~~~ function levels/diy_levels/back_to_diy_area

# ===== 游戏模式 =====

## 限时模式下，超时强制退出
### 当时间线到达20时，即过了1秒，为剩余时间减少1秒
execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ execute @e[name=timeline,scores={time=20..}] ~~~ scoreboard players remove @e[name=remainingTime] time 1
### 1s循环一次
execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ scoreboard players remove @e[name=timeline,scores={time=20..}] time 20
### 计时为0时自动停止并退出
execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ execute @e[name=remainingTime,scores={time=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.out_of_time"}]}
execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ execute @e[name=remainingTime,scores={time=0}] ~~~ function items/quit

# ===== 编辑模式 =====

## 将出界的玩家传送回来
execute @e[name=diyEditMode,scores={backend=1}] ~~~ scoreboard players set @a backend 0

### /// 白名单区域
execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @a[x=-132,y=0,z=-41,dx=31,dy=31,dz=31] ~~~ scoreboard players set @s backend 1
execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @a[x=3,y=8,z=2,dx=2,dy=2,dz=2] ~~~ scoreboard players set @s backend 1

execute @e[name=diyIsLoading,scores={backend=..0}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @a[scores={backend=0}] ~~~ tellraw @s {"rawtext":[{"translate":"chat.diy_levels.out_of_area"}]}
execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @a[scores={backend=0}] ~~~ scoreboard players set @e[name=soundPlayer] active 5
execute @e[name=diyEditMode,scores={backend=1}] ~~~ execute @a[scores={backend=0}] ~~~ tp @s -107 2 -15

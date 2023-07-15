# 每1秒释放1次粒子
execute @e[name=ticker,scores={time=0}] ~~~ function halls/advanced_settings/particle_settings

# ===== 若未开启开发者模式，移除展示框以作子选项隐藏 =====
execute @e[name=ticker,scores={time=0}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ fill -100 21 43 -106 21 43 air
execute @e[name=ticker,scores={time=0}] ~~~ execute @e[name=developerMode,scores={settings=1}] ~~~ clone -100 12 43 -106 12 43 -106 21 43

# ===== 若权限等级不足，则不显示更改游戏模式的选项 =====
execute @e[name=ticker,scores={time=0}] ~~~ fill -102 21 49 -104 21 49 air
execute @e[name=ticker,scores={time=0}] ~~~ execute @a[scores={oplevel=1..},c=1] ~~~ clone -102 12 49 -104 12 49 -104 21 49

# ===== 各设置子项 =====

## === 调整权限等级 ===
execute @a[x=-98,y=19,z=49,r=1] ~~~ function settings/oplevel
execute @a[x=-98,y=19,z=49,r=1] ~~~ function halls/advanced_settings/text_display
execute @a[x=-98,y=19,z=49,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 11
execute @a[x=-98,y=19,z=49,r=1] ~~~ tp @s -98 19 46

## === 改为开发者模式 ===

## 确认倒计时
execute @e[name=ticker,scores={time=0}] ~~~ scoreboard players add @e[name=itemTester1,scores={active=!-1}] active 1
## 重置地图失效
execute @e[name=itemTester1,scores={active=10..}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.request_out_of_time"}]}
scoreboard players set @e[name=itemTester1,scores={active=10..}] active -1
## 初始化backend.counter，以防止settings.developerMode直接影响到后续操作
execute @a[x=-98,y=19,z=43,r=1] ~~~ scoreboard players operation @e[name=counter] backend = @e[name=developerMode] settings

## --- 当准备开启开发者模式时 | 此时backend.counter=0 ---
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-98,y=19,z=43,r=1] ~~~ execute @e[name=itemTester1,scores={active=0..10}] ~~~ function developer/developer_mode
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-98,y=19,z=43,r=1] ~~~ execute @e[name=itemTester1,scores={active=0..10}] ~~~ scoreboard players set @s active -2
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-98,y=19,z=43,r=1] ~~~ execute @e[name=itemTester1,scores={active=-1}] ~~~ scoreboard players set @e[name=soundPlayer] active 12
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-98,y=19,z=43,r=1] ~~~ execute @e[name=itemTester1,scores={active=-1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.settings.developer_mode.warning"}]}
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-98,y=19,z=43,r=1] ~~~ execute @e[name=itemTester1,scores={active=-1}] ~~~ scoreboard players set @s active 0
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-98,y=19,z=43,r=1] ~~~ function halls/advanced_settings/text_display
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-98,y=19,z=43,r=1] ~~~ tp @s -98 19 46

## --- 当准备关闭开发者模式时 ---
execute @e[name=counter,scores={backend=1}] ~~~ execute @a[x=-98,y=19,z=43,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 11
execute @e[name=counter,scores={backend=1}] ~~~ execute @a[x=-98,y=19,z=43,r=1] ~~~ function developer/developer_mode
execute @e[name=counter,scores={backend=1}] ~~~ execute @a[x=-98,y=19,z=43,r=1] ~~~ function halls/advanced_settings/text_display
execute @e[name=counter,scores={backend=1}] ~~~ execute @a[x=-98,y=19,z=43,r=1] ~~~ tp @s -98 19 46

## === 重置地图 ===
# 确认倒计时
execute @e[name=ticker,scores={time=0}] ~~~ scoreboard players add @e[name=itemTester2,scores={active=0..}] active 1
## 重置地图失效
execute @e[name=itemTester2,scores={active=10..}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.request_out_of_time"}]}
scoreboard players set @e[name=itemTester2,scores={active=10..}] active -1

execute @a[x=-108,y=19,z=43,r=1] ~~~ execute @e[name=itemTester2,scores={active=0..10}] ~~~ function settings/reset_map
execute @a[x=-108,y=19,z=43,r=1] ~~~ execute @e[name=itemTester2,scores={active=-1}] ~~~ scoreboard players set @e[name=soundPlayer] active 12
execute @a[x=-108,y=19,z=43,r=1] ~~~ execute @e[name=itemTester2,scores={active=-1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.settings.reset_map.warning"}]}
execute @a[x=-108,y=19,z=43,r=1] ~~~ execute @e[name=itemTester2,scores={active=-1}] ~~~ scoreboard players set @s active 0
execute @a[x=-108,y=19,z=43,r=1] ~~~ tp @s -108 19 46

## === 手动更改适配模式 ===
execute @a[x=-108,y=19,z=49,r=1] ~~~ function settings/is_netease
execute @a[x=-108,y=19,z=49,r=1] ~~~ function halls/advanced_settings/text_display
execute @a[x=-108,y=19,z=49,r=1] ~~~ tp @s -108 19 46



## === 改为创造模式 | 受权限等级控制 ===
execute @a[x=-102,y=19,z=49,r=1,scores={oplevel=1..}] ~~~ gamemode creative @s
execute @a[x=-102,y=19,z=49,r=1,scores={oplevel=1..}] ~~~ scoreboard players set @e[name=soundPlayer] active 11
execute @a[x=-102,y=19,z=49,r=1,scores={oplevel=1..}] ~~~ tp @s -102 19 46

## === 改为冒险模式 | 受权限等级控制 ===
execute @a[x=-104,y=19,z=49,r=1,scores={oplevel=1..}] ~~~ gamemode adventure @s
execute @a[x=-104,y=19,z=49,r=1,scores={oplevel=1..}] ~~~ scoreboard players set @e[name=soundPlayer] active 11
execute @a[x=-104,y=19,z=49,r=1,scores={oplevel=1..}] ~~~ tp @s -104 19 46

## === 解锁主线 | 受开发者模式控制 ===
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[x=-100,y=19,z=43,r=1] ~~~ function developer/unlock_mainline
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[x=-100,y=19,z=43,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 11
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[x=-100,y=19,z=43,r=1] ~~~ tp @s -100 19 46

## === 解锁彩蛋 | 受开发者模式控制 ===
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[x=-102,y=19,z=43,r=1] ~~~ function developer/unlock_easter_egg
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[x=-102,y=19,z=43,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 11
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[x=-102,y=19,z=43,r=1] ~~~ tp @s -102 19 46

## === 解锁限时 | 受开发者模式控制 ===
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[x=-104,y=19,z=43,r=1] ~~~ function developer/unlock_time_limited
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[x=-104,y=19,z=43,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 11
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[x=-104,y=19,z=43,r=1] ~~~ tp @s -104 19 46

## === 重置记录 | 受开发者模式控制 ===
# 确认倒计时
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=ticker,scores={time=0}] ~~~ scoreboard players add @e[name=itemTester3,scores={active=!-1}] active 1
## 重置地图失效
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=itemTester3,scores={active=10..}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.request_out_of_time"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ scoreboard players set @e[name=itemTester3,scores={active=10..}] active -1

execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[x=-106,y=19,z=43,r=1] ~~~ execute @e[name=itemTester3,scores={active=0..10}] ~~~ function developer/reset_record
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[x=-106,y=19,z=43,r=1] ~~~ execute @e[name=itemTester3,scores={active=0..10}] ~~~ scoreboard players set @s active -2
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[x=-106,y=19,z=43,r=1] ~~~ execute @e[name=itemTester3,scores={active=-1}] ~~~ scoreboard players set @e[name=soundPlayer] active 12
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[x=-106,y=19,z=43,r=1] ~~~ execute @e[name=itemTester3,scores={active=-1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.settings.reset_record.warning"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[x=-106,y=19,z=43,r=1] ~~~ execute @e[name=itemTester3,scores={active=-1}] ~~~ scoreboard players set @s active 0
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[x=-106,y=19,z=43,r=1] ~~~ tp @s -106 19 46

# 每1秒释放1次粒子
execute @e[name=ticker,scores={time=0}] ~~~ function halls/advanced_settings/particle_settings

# 确认倒计时
execute @e[name=ticker,scores={time=0}] ~~~ scoreboard players add @e[name=counter,scores={backend=0..}] backend 1
## 重置地图失效
execute @e[name=counter,scores={backend=10..}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.request_out_of_time"}]}
scoreboard players set @e[name=counter,scores={backend=10..}] backend -1

## === 调整权限等级 ===
execute @a[x=-98,y=19,z=49,r=1] ~~~ function settings/oplevel
execute @a[x=-98,y=19,z=49,r=1] ~~~ function halls/advanced_settings/text_display
execute @a[x=-98,y=19,z=49,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 11
execute @a[x=-98,y=19,z=49,r=1] ~~~ tp @s -98 19 46

## === 改为创造模式 ===
execute @a[x=-102,y=19,z=49,r=1] ~~~ gamemode creative @a
execute @a[x=-102,y=19,z=49,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 11
execute @a[x=-102,y=19,z=49,r=1] ~~~ tp @s -102 19 46

## === 改为冒险模式 ===
execute @a[x=-104,y=19,z=49,r=1] ~~~ gamemode adventure @a
execute @a[x=-104,y=19,z=49,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 11
execute @a[x=-104,y=19,z=49,r=1] ~~~ tp @s -104 19 46

## === 改为开发者模式 ===
execute @a[x=-108,y=19,z=49,r=1] ~~~ function developer/developer_mode
execute @a[x=-108,y=19,z=49,r=1] ~~~ function halls/advanced_settings/text_display
execute @a[x=-108,y=19,z=49,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 11
execute @a[x=-108,y=19,z=49,r=1] ~~~ tp @s -108 19 46

## === 手动更改适配模式 ===
execute @a[x=-100,y=19,z=43,r=1] ~~~ function settings/is_netease
execute @a[x=-100,y=19,z=43,r=1] ~~~ function halls/advanced_settings/text_display
execute @a[x=-100,y=19,z=43,r=1] ~~~ tp @s -100 19 46

## === 解锁主线 ===
execute @a[x=-98,y=19,z=43,r=1] ~~~ function developer/unlock_mainline
execute @a[x=-98,y=19,z=43,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 11
execute @a[x=-98,y=19,z=43,r=1] ~~~ tp @s -98 19 46

## === 重置地图 ===
execute @a[x=-108,y=19,z=43,r=1] ~~~ execute @e[name=counter,scores={backend=0..10}] ~~~ function settings/reset_map
execute @a[x=-108,y=19,z=43,r=1] ~~~ execute @e[name=counter,scores={backend=-1}] ~~~ scoreboard players set @e[name=soundPlayer] active 12
execute @a[x=-108,y=19,z=43,r=1] ~~~ execute @e[name=counter,scores={backend=-1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.reset_map.warning"}]}
execute @a[x=-108,y=19,z=43,r=1] ~~~ execute @e[name=counter,scores={backend=-1}] ~~~ scoreboard players set @s backend 0
execute @a[x=-108,y=19,z=43,r=1] ~~~ tp @s -108 19 46
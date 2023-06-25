# 第30关时间线设定

## === 开启对话后，执行对话 ===
execute @e[name=level30Dialogue,scores={settings=1}] ~~~ function levels/level_30/dialogue

## === 关闭对话后，执行正常的关卡命令程序 ===

### --- 在刚开始时，有6秒的加载等待 ---
#### 开始时，加载6秒后进入房间 | 一秒减一次backend.counter
execute @e[name=ticker,scores={time=0}] ~~~ scoreboard players add @e[name=counter,scores={backend=-1..7}] backend -1
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=0}] ~~~ execute @e[name=ticker,scores={time=0}] ~~~ tp @a -110 65 85 facing -120 65 85
#### 移除开发者
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=0}] ~~~ execute @e[name=ticker,scores={time=0}] ~~~ kill @e[type=wstd:creator,x=5,y=5,z=14,r=3]
### 创建展示文本
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=0}] ~~~ execute @e[name=ticker,scores={time=0}] ~~~ summon wstd:text_display "这儿没东西，真的awa" -110 66 90
#### 当未获得[禁止套娃]进度时，放置木桶
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=0}] ~~~ execute @e[name=ticker,scores={time=0}] ~~~ execute @e[name=advTheEnd,scores={stats=1}] ~~~ execute @e[name=advNoDolls,scores={stats=0}] ~~~ setblock -129 64 74 minecraft:barrel["facing_direction":0,"open_bit":false]
#### 当未获得[绿宝石！]进度时，放置绿宝石
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=0}] ~~~ execute @e[name=ticker,scores={time=0}] ~~~ execute @e[name=advSurviveMaster,scores={stats=1}] ~~~ execute @e[name=advEmerald,scores={stats=0}] ~~~ setblock -123 45 87 minecraft:emerald_ore
### 创建交易者
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ execute @e[name=counter,scores={backend=0}] ~~~ execute @e[name=ticker,scores={time=0}] ~~~ summon wstd:creator -125 65 77 become_ngz_tradable

### --- 检测下界传送门，检测到后立马销毁 ---
execute @a ~~~ detect ~~~ portal -1 tellraw @a {"rawtext":[{"translate":"chat.level_30.portal"}]}
execute @a ~~~ detect ~~~ portal -1 fill ~-2~-2~-2~2~2~2 air [] replace portal

### --- 检测玩家手持下界合金镐，检测到后清除基岩 ---
execute @a[hasitem={item=netherite_pickaxe,location=slot.weapon.mainhand}] ~~~ fill ~-2~-1~-2~2~1~2 air [] replace bedrock

### --- 始终给予玩家状态效果 ---
execute @e[name=ticker,scores={time=0}] ~~~ effect @a fire_resistance 30 0 true
execute @e[name=ticker,scores={time=0}] ~~~ effect @a water_breathing 30 0 true

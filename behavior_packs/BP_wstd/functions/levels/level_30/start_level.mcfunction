# 启动与重启函数

scoreboard players set @e[name=level] backend 30

## === 开启对话后，执行对话 ===
### 清除玩家的物品
execute @e[name=level30Dialogue,scores={settings=1}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ clear @a
### 执行时间线
execute @e[name=level30Dialogue,scores={settings=1}] ~~~ function system/enable_timeline

## === 关闭对话后，执行正常的开启程序 ===

### 重置加载时间 | 6s加载时间
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ scoreboard players set @e[name=counter] backend 6
### 调用所有关卡通用函数
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ function levels/all_levels/start_level
### 标题&音效
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ titleraw @a title {"rawtext":[{"translate":"title.level_30"}]}
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_30"}]}
### 复制房间
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ structure load level_30 -132 0 71 0_degrees none layer_by_layer 5
### 传送玩家
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ tp @a -101 66 66 facing -126 66 85
### 给予辅助功能物品
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ give @a wstd:skip 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
### 启动时间线
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ function system/enable_timeline_without_flowing
### 启用通关延迟
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ function system/enable_level_complete_delay
### 给予抗性提升
execute @e[name=level30Dialogue,scores={settings=0}] ~~~ effect @a resistance 1000000 9 true
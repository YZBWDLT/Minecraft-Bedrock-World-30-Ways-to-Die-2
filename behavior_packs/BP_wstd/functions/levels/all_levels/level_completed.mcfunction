# 所有关卡通用 完成关卡函数

# ---------- 常规项 ----------

# ===== 设置游戏模式为冒险 =====
execute @e[name=developerMode,scores={settings=0}] ~~~ gamemode adventure @a

# ===== 清除物品 =====
## 非开发者模式下，移除所有物品
execute @e[name=developerMode,scores={settings=0}] ~~~ clear @a
## 开发者模式下，移除辅助功能物品
execute @e[name=developerMode,scores={settings=1}] ~~~ function developer/clear_items

# ===== 清除掉落物与多余实体 =====
kill @e[type=!player,family=!marker,type=!ender_dragon]

# ===== 移除玩家药效 | 为防止开发者模式下夜视效果被移除，故加上限制 =====
execute @e[name=developerMode,scores={settings=0}] ~~~ effect @a clear

# ===== 停止检测物品 =====
function system/stop_item_test

# ===== 提醒玩家开发者模式下部分命令执行失败 =====
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.developer_mode.run_command_failed"}]}

# ---------- ID相关项 ----------

# ===== 播放音乐 =====
## 从限时关卡返回
execute @e[name=level,scores={backend=36..40}] ~~~ function system/music/play_maingame
## 从自定义关卡返回
execute @e[name=level,scores={backend=51..60}] ~~~ function system/music/play_maingame

# ===== 传送玩家 =====
## 从自定义关卡返回
execute @e[name=level,scores={backend=51..60}] ~~~ tp @a -22 10 -10 facing -40 10 -10

# ===== 停止运行命令系统 =====
## 从DIY关卡返回
execute @e[name=level,scores={backend=51..60}] ~~~ fill -101 1 -10 -111 7 -21 air
## 移除原支线5的信标
execute @e[name=level,scores={backend=60}] ~~~ setblock -115 19 -13 air

# ===== 刷新记分板 =====
## 从主线关卡返回
execute @e[name=level,scores={backend=!36..60}] ~~~ function system/display_scoreboards/normal_levels
## 从限时关卡返回
execute @e[name=level,scores={backend=36..40}] ~~~ function system/display_scoreboards/time_limited_levels
## 从彩蛋关卡返回
execute @e[name=level,scores={backend=41..50}] ~~~ function system/display_scoreboards/easter_egg_levels

# ===== 设置展示文本 =====
## 从主线关卡返回
execute @e[name=level,scores={backend=!36..60}] ~~~ function halls/main_hall/text_display
## 从限时关卡返回
execute @e[name=level,scores={backend=36..40}] ~~~ function halls/time_limited_hall/text_display
## 从彩蛋关卡返回
execute @e[name=level,scores={backend=41..50}] ~~~ function halls/easter_egg_hall/text_display
## 从自定义关卡返回
execute @e[name=level,scores={backend=51..60}] ~~~ function halls/diy_hall/text_display

# ===== 设置关卡ID =====
## 从主线关卡返回
execute @e[name=level,scores={backend=!36..60}] ~~~ scoreboard players set @e[name=level] backend 0
## 从限时关卡返回
execute @e[name=level,scores={backend=36..40}] ~~~ scoreboard players set @e[name=level] backend -3
## 从彩蛋关卡返回
execute @e[name=level,scores={backend=41..50}] ~~~ scoreboard players set @e[name=level] backend -2
## 从自定义关卡返回
execute @e[name=level,scores={backend=51..60}] ~~~ scoreboard players set @e[name=level] backend -1

# ===== 给予物品 =====
function system/functionality_items_controller
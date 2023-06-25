# 开启所有大厅级“关卡”的函数

# ===== 清除物品 =====
execute @e[name=developerMode,scores={settings=0}] ~~~ clear @a
execute @e[name=developerMode,scores={settings=1}] ~~~ function developer/clear_items

# ===== 音效 | random.orb, 2 =====
scoreboard players set @e[name=soundPlayer] active 2

# ===== 移除药效 =====
execute @e[name=developerMode,scores={settings=0}] ~~~ effect @a clear

# ===== 播放音乐 =====
execute @e[name=isNetease,scores={settings=0}] ~~~ function system/music/queue_maingame

# ===== 清空多余实体 =====
kill @e[type=!player,family=!marker,type=!ender_dragon]

# ===== 启动时间线 =====
function system/enable_timeline_without_flowing


# ===== 设置为冒险模式 =====
execute @e[name=developerMode,scores={settings=0}] ~~~ gamemode adventure @a

# ===== 给予物品 =====
function system/functionality_items_controller

# ===== 提醒玩家开发者模式下部分命令执行失败 =====
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.developer_mode.run_command_failed"}]}
# 所有关卡通用 开始关卡函数

# ---------- ID相关项 ----------

# ===== 播放音乐 =====
## 从限时关卡进入
execute @e[name=level,scores={backend=36..40}] ~~~ function system/music/play_timelimit

# ---------- 常规项 ----------

# ===== 更改标题时间预设 =====
titleraw @a times 0 60 0

# ===== 调整游戏模式 =====
execute @e[name=developerMode,scores={settings=0}] ~~~ gamemode adventure @a

# ===== 清除物品 =====
## 非开发者模式下，移除所有物品
execute @e[name=developerMode,scores={settings=0}] ~~~ clear @a
## 开发者模式下，移除辅助功能物品
execute @e[name=developerMode,scores={settings=1}] ~~~ function developer/clear_items

# ===== 清除多余实体 =====
kill @e[type=!player,family=!marker,type=!ender_dragon]

# ===== 清除玩家药效 =====
execute @e[name=developerMode,scores={settings=0}] ~~~ effect @a clear

# ===== 恢复玩家血量 =====
effect @a instant_health 1 255 true

# ===== 音效 | random.orb, 音调2 =====
scoreboard players set @e[name=soundPlayer] active 2

# ===== 给予辅助功能物品 | 通用函数中给予重置和退出 =====
give @a[hasitem={item=wstd:reset,quantity=0}] wstd:reset 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
give @a[hasitem={item=wstd:quit,quantity=0}] wstd:quit 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# ===== 当所有关卡延时通关启用后，启用延时通关 =====
execute @e[name=levelCompleteDelay,scores={settings=-5..-1}] ~~~ function system/enable_level_complete_delay

# ===== 给予物品 =====
function system/functionality_items_controller

# ===== 停止时间线 | 自定义关卡除外 =====
execute @e[name=level,scores={backend=!51..60}] ~~~ function system/disable_timeline
execute @e[name=level,scores={backend=51..60}] ~~~ function system/enable_timeline_without_flowing

# ===== 提醒玩家开发者模式下部分命令执行失败 =====
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.developer_mode.run_command_failed"}]}
# ===== 玩家进入检测 =====
# 当玩家进入粒子位置后，则触发某些函数

# --- 地图规则与玩法 Q&A ---
execute as @a[x=-98,y=19,z=49,r=1] run function halls/settings/question_and_answer/start

# --- 地图难度与语言设定 ---
execute as @a[x=-100,y=19,z=49,r=1] run function halls/settings/diff_and_lang/start

# --- 第30关对话设定 ---
execute as @a[x=-102,y=19,z=49,r=1] run function halls/settings/main/functions/level_30_dialogue

# --- gamerule锁定设定 ---
execute as @a[x=-104,y=19,z=49,r=1] run function halls/settings/main/functions/gamerule_locker

# --- 结束特效的烟花设定 ---
execute as @a[x=-106,y=19,z=49,r=1] run function halls/settings/firework/start

# --- 地图时间设定 ---
execute as @a[x=-108,y=19,z=49,r=1] run function halls/settings/main/functions/map_time

# --- 关卡完成延时设定 ---
execute as @a[x=-98,y=19,z=43.5,r=1] run function halls/settings/main/functions/level_complete_delay

# --- 浏览地图 ---
execute as @a[x=-100,y=19,z=43.5,r=1] run function halls/settings/explore_map/start

# --- 记分板显示设定 ---
execute as @a[x=-102,y=19,z=43.5,r=1] run function halls/settings/main/functions/scoreboard_display

# --- 速通模式设定 ---
execute as @a[x=-104,y=19,z=43.5,r=1] run function halls/settings/main/functions/speedrun_mode

# --- 权限等级设定与高级功能 ---
execute as @a[x=-106,y=19,z=43.5,r=1] run function halls/settings/advanced/start

# --- 关于本地图 ---
execute as @a[x=-108,y=19,z=43.5,r=1] run function halls/settings/about/start

# --- 恢复所有设置为默认 ---
execute as @a[x=-109,y=19,z=46,r=1] run function halls/settings/main/functions/reset_settings

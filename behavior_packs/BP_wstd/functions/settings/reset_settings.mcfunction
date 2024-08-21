# ===== 重置所有设置 =====

# --- 第30关对话 ---
# 默认：开
execute unless score progress.level record matches 29..30 run scoreboard players set level30Dialogue settings 2
execute if score progress.level record matches 29..30 run scoreboard players set level30Dialogue settings 1

# --- 游戏规则锁定 ---
# 默认：开
scoreboard players set gameruleLock settings 1

# --- 地图时间 ---
# 默认：烟花教程黑夜
scoreboard players set mapTime settings 1

# --- 关卡完成延迟 ---
# 默认：部分0.5秒
scoreboard players set levelCompleteDelay settings 2

# --- 记分板显示 ---
# 默认：完整
scoreboard players set scoreboardDisplay settings 2
function lib/modify_data/scoreboard_show

# --- 速通模式 ---
# 默认：关闭
scoreboard players set speedrunMode settings 0

# --- 提示 ---

## 聊天栏
tellraw @a {"rawtext":[{"translate":"chat.settings.reset_settings"}]} 
## 音效
function lib/modify_states/sound/mob_villager_yes

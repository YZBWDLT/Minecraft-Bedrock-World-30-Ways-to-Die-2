# ===== 常见问题 =====

## 传送玩家
tp @a -103 19 44 0 0

## 设定当前正处于常见问题状态中 | data.settingCenter.help代表当前正查看的帮助步骤
scoreboard players set settingCenter.help data 1

# --- 启用时间线和剧情线 ---
function lib/modify_states/timeline/enable_7
function lib/modify_states/dialogue/disable

# --- 移除展示框 ---
fill -96 21 43 -109 21 49 air

# --- 文本展示实体显示 ---
execute if score language data matches 0 run function halls/settings/about/text_display/chinese_help
execute if score language data matches 1 run function halls/settings/about/text_display/english_help

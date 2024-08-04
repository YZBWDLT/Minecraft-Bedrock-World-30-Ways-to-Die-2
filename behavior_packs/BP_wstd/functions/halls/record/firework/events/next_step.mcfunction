# ===== 下一步 =====

# --- 添加步骤 ---
scoreboard players add fireworkTutorial.step data 1
execute if score fireworkTutorial.step data matches !1..8 run scoreboard players set fireworkTutorial.step data 1

# --- 按步骤展示展示文本 ---
execute if score language settings matches 0 run function halls/record/firework/text_display/chinese
execute if score language settings matches 1 run function halls/record/firework/text_display/english

# --- 播放音效 ---
function lib/modify_states/sound/random_pop

# --- 按步骤加载结构 ---
function halls/record/firework/events/load_structure

# --- 照明 ---
## 如果地图时间设置为了“锁定黑夜”或“仅烟花教程时黑夜”，则放置海晶灯照明
execute if score mapTime settings matches 1..2 run setblock 7 20 -28 sea_lantern
execute if score mapTime settings matches 1..2 run setblock 13 20 -28 sea_lantern
execute if score mapTime settings matches 1..2 run setblock 13 20 -22 sea_lantern
execute if score mapTime settings matches 1..2 run setblock 7 20 -22 sea_lantern

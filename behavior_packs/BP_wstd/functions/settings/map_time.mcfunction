# ===== 地图时间设置 =====

# --- 设置状态 ---

scoreboard players add mapTime settings 1
execute if score mapTime settings matches !0..3 run scoreboard players set mapTime settings 0

# --- 提示 ---

## 聊天栏
execute if score mapTime settings matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.map_time.always_day"}]}
execute if score mapTime settings matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.map_time.night_in_firework_tutorial"}]}
execute if score mapTime settings matches 2 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.map_time.always_night"}]}
execute if score mapTime settings matches 3 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.map_time.time_flows"}]}
## 音效
function lib/modify_states/sound/random_orb_1

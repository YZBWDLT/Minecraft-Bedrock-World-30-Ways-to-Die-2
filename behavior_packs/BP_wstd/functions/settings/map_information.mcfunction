# ===== 地图信息 =====

# --- 正文 ---

tellraw @s {"rawtext":[{"translate":"functions.settings.map_information.title"}]}

## 国际版
execute if score isNetease data matches 0 run tellraw @s {"rawtext":[{"translate":"functions.settings.map_information.international.map_version"}]}
execute if score isNetease data matches 0 run tellraw @s {"rawtext":[{"translate":"functions.settings.map_information.international.platforms"}]}
execute if score isNetease data matches 0 run tellraw @s {"rawtext":[{"translate":"functions.settings.map_information.international.min_engine_version"}]}
execute if score isNetease data matches 0 run tellraw @s {"rawtext":[{"translate":"functions.settings.map_information.international.price"}]}

## 网易版
execute if score isNetease data matches 1 run tellraw @s {"rawtext":[{"translate":"functions.settings.map_information.netease.map_version"}]}
execute if score isNetease data matches 1 run tellraw @s {"rawtext":[{"translate":"functions.settings.map_information.netease.min_engine_version"}]}
execute if score isNetease data matches 1 run tellraw @s {"rawtext":[{"translate":"functions.settings.map_information.netease.price"}]}

# --- 音效 ---
function lib/modify_states/sound/mob_villager_yes

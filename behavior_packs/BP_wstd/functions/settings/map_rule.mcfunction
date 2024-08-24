# ===== 地图规则 =====

# --- 正文 ---

tellraw @a {"rawtext":[{"translate":"functions.settings.map_rule.title"}]}
execute if score isNetease data matches 0 run tellraw @a {"rawtext":[{"translate":"functions.settings.map_rule.commands"}]}
execute if score isNetease data matches 1 run tellraw @a {"rawtext":[{"translate":"functions.settings.map_rule_commands"}]}
tellraw @a {"rawtext":[{"translate":"functions.settings.map_rule.gamemode"}]}
tellraw @a {"rawtext":[{"translate":"functions.settings.map_rule.recommended_player_amount"}]}
tellraw @a {"rawtext":[{"translate":"functions.settings.map_rule.notice"}]}
tellraw @a {"rawtext":[{"translate":"functions.settings.map_rule.warning"}]}

# --- 音效 ---
function lib/modify_states/sound/mob_villager_yes

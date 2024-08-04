# ===== 如何游玩 =====

# --- 正文 ---

tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line1"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line2"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line3"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line4"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line5"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line6"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line7"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line8"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line9"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line10"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line11"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line12"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line13"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line14"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line15"}]}
execute if score isNetease data matches 0 run tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line16"}]}
execute if score isNetease data matches 1 run tellraw @a {"rawtext":[{"translate":"netease.chat.how_to_play.line16"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line17"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line18"}]}
execute if score isNetease data matches 0 run tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line19"}]}
execute if score isNetease data matches 1 run tellraw @a {"rawtext":[{"translate":"netease.chat.how_to_play.line19"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line20"}]}
execute if score isNetease data matches 0 run tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line21"}]}
execute if score isNetease data matches 1 run tellraw @a {"rawtext":[{"translate":"netease.chat.how_to_play.line21"}]}
execute if score isNetease data matches 0 run tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line22"}]}
execute if score isNetease data matches 1 run tellraw @a {"rawtext":[{"translate":"netease.chat.how_to_play.line22"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line23"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line24"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line25"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line26"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line27"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line28"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line29"}]}
tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line30"}]}
execute if score isNetease data matches 0 run tellraw @a {"rawtext":[{"translate":"chat.how_to_play.line31"}]}
execute if score isNetease data matches 1 run tellraw @a {"rawtext":[{"translate":"netease.chat.how_to_play.line31"}]}

# --- 音效提示 ---
function lib/modify_states/sound/mob_villager_yes

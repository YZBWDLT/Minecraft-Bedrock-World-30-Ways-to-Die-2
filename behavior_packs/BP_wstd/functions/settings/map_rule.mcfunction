tellraw @a {"rawtext":[{"translate":"chat.map_rule.line1"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line2"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line3"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line4"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line5"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line6"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line7"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line8"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line9"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line10"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line11"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line12"}]}
execute @e[name=isNetease,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.map_rule.line13"}]}
execute @e[name=isNetease,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"netease.chat.map_rule.line13"}]}

scoreboard players set @e[name=soundPlayer] active 3
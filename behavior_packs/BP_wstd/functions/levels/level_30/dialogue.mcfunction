# 第30关对话

## 固定玩家
execute @e[name=developerMode,scores={settings=0}] ~~~ tp @a -37 9 27 facing -37 9 24

## 对话正文
execute @e[name=timeline,scores={time=1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_30.dialogue.line1"}]}
execute @e[name=timeline,scores={time=1}] ~~~ execute @a ~~~ playsound random.orb @s
execute @e[name=timeline,scores={time=1}] ~~~ summon wstd:creator -37 9 25 "become_lt"
execute @e[name=timeline,scores={time=1}] ~~~ effect @a invisibility 999 0 true

execute @e[name=timeline,scores={time=80}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_30.dialogue.line2","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @e[name=timeline,scores={time=80}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=160}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_30.dialogue.line3"}]}
execute @e[name=timeline,scores={time=160}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=240}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_30.dialogue.line4"}]}
execute @e[name=timeline,scores={time=240}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=320}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_30.dialogue.line5"}]}
execute @e[name=timeline,scores={time=320}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=400}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_30.dialogue.line6","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @e[name=timeline,scores={time=400}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=480}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_30.dialogue.line7"}]}
execute @e[name=timeline,scores={time=480}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=560}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_30.dialogue.line8"}]}
execute @e[name=timeline,scores={time=560}] ~~~ execute @a ~~~ playsound random.orb @s
execute @e[name=timeline,scores={time=560}] ~~~ tp @e[type=wstd:creator] 5 5 14

execute @e[name=timeline,scores={time=640}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_30.dialogue.line9","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @e[name=timeline,scores={time=640}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=720}] ~~~ function levels/level_30/dialogue_end
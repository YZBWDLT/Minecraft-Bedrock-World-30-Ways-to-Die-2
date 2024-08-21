# ===== 剧情线 =====
# 仅限在lib/function_lists/dialogue注册后，且启用剧情线后执行

# --- 第一阶段 ---
# 执行时间：从开始 ~ 玩家按下按钮
# 0~281：开始 ~ 玩家拿出按钮前 | 282~283：玩家拿出按钮后 ~ 玩家按下按钮

execute if score dialogue active matches 1 if score dialogue time matches 40 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line1","with":{"rawtext":[{"selector":"@s"}]}}]}
execute if score dialogue active matches 1 if score dialogue time matches 40 run function lib/modify_states/sound/random_pop

execute if score dialogue active matches 1 if score dialogue time matches 120 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line2"}]}
execute if score dialogue active matches 1 if score dialogue time matches 120 run function lib/modify_states/sound/random_pop

execute if score dialogue active matches 1 if score dialogue time matches 200 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line3"}]}
execute if score dialogue active matches 1 if score dialogue time matches 200 run function lib/modify_states/sound/random_orb_2

execute if score dialogue active matches 1 if score dialogue time matches 280 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line4"}]}
execute if score dialogue active matches 1 if score dialogue time matches 280 run function lib/modify_states/sound/random_pop

execute if score dialogue active matches 1 if score dialogue time matches 281 run function lib/modify_states/dialogue/disable_keep

execute if score dialogue active matches 1 if score dialogue time matches 283 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line5"}]}
execute if score dialogue active matches 1 if score dialogue time matches 283 run function lib/modify_states/sound/random_pop

execute if score dialogue active matches 1 if score dialogue time matches 283 run function lib/modify_states/dialogue/disable

# --- 第二阶段 ---
# 执行时间：玩家按下按钮后 ~ 玩家拿到提示

execute if score dialogue active matches 2 if score dialogue time matches 40 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line6"}]}
execute if score dialogue active matches 2 if score dialogue time matches 40 run function lib/modify_states/sound/random_pop

## 这一段因为存在网易屏蔽词，故进行区分
execute if score dialogue active matches 2 if score dialogue time matches 120 if score isNetease data matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line7"}]}
execute if score dialogue active matches 2 if score dialogue time matches 120 if score isNetease data matches 1 as @a run tellraw @s {"rawtext":[{"translate":"netease.chat.open.tutorial.line7"}]}
execute if score dialogue active matches 2 if score dialogue time matches 120 run function lib/modify_states/sound/random_pop

execute if score dialogue active matches 2 if score dialogue time matches 200 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line8"}]}
execute if score dialogue active matches 2 if score dialogue time matches 200 run function lib/modify_states/sound/random_orb_2

execute if score dialogue active matches 2 if score dialogue time matches 201 run function lib/modify_states/dialogue/disable

# --- 第三阶段 ---
# 执行时间：玩家使用提示后 ~ 玩家拿到攻略
execute if score dialogue active matches 3 if score dialogue time matches 40 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line9"}]}
execute if score dialogue active matches 3 if score dialogue time matches 40 run function lib/modify_states/sound/random_pop

execute if score dialogue active matches 3 if score dialogue time matches 120 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line10"}]}
execute if score dialogue active matches 3 if score dialogue time matches 120 run function lib/modify_states/sound/random_orb_2

execute if score dialogue active matches 3 if score dialogue time matches 121 run function lib/modify_states/dialogue/disable

# --- 第四阶段 ---
# 执行时间：玩家使用攻略后 ~ 玩家拿到跳过后4秒

execute if score dialogue active matches 4 if score dialogue time matches 40 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line11"}]}
execute if score dialogue active matches 4 if score dialogue time matches 40 as @a run function lib/modify_states/sound/random_pop

execute if score dialogue active matches 4 if score dialogue time matches 120 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line12"}]}
execute if score dialogue active matches 4 if score dialogue time matches 120 as @a run function lib/modify_states/sound/random_pop

execute if score dialogue active matches 4 if score dialogue time matches 200 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line13"}]}
execute if score dialogue active matches 4 if score dialogue time matches 200 as @a run function lib/modify_states/sound/random_orb_2

execute if score dialogue active matches 4 if score dialogue time matches 280 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line14"}]}
execute if score dialogue active matches 4 if score dialogue time matches 280 as @a run function lib/modify_states/sound/random_pop

execute if score dialogue active matches 4 if score dialogue time matches 281 run function lib/modify_states/dialogue/disable

# --- 第五阶段 ---
# 执行时间：玩家使用跳过后 ~ 本关结束

execute if score dialogue active matches 5 if score dialogue time matches 40 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line15"}]}
execute if score dialogue active matches 5 if score dialogue time matches 40 as @a run function lib/modify_states/sound/random_pop

execute if score dialogue active matches 5 if score dialogue time matches 120 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line16"}]}
execute if score dialogue active matches 5 if score dialogue time matches 120 as @a run function lib/modify_states/sound/random_orb_2

execute if score dialogue active matches 5 if score dialogue time matches 200 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line17"}]}
execute if score dialogue active matches 5 if score dialogue time matches 200 as @a run function lib/modify_states/sound/random_orb_2

execute if score dialogue active matches 5 if score dialogue time matches 280 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line18"}]}
execute if score dialogue active matches 5 if score dialogue time matches 280 as @a run function lib/modify_states/sound/random_pop

execute if score dialogue active matches 5 if score dialogue time matches 360 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line19"}]}
execute if score dialogue active matches 5 if score dialogue time matches 360..363 as @a at @s run playsound random.pop @s ~~~ 1 1

execute if score dialogue active matches 5 if score dialogue time matches 440 as @a run tellraw @s {"rawtext":[{"translate":"chat.open.tutorial.line20"}]}
execute if score dialogue active matches 5 if score dialogue time matches 440 as @a run function lib/modify_states/sound/random_pop

execute if score dialogue active matches 5 if score dialogue time matches 441 run function lib/modify_states/dialogue/disable

# ===== 召唤实体 =====
# 当玩家使用“下一步”时，开始游戏并开始召唤生物

# --- 若游戏还未开始，开始游戏 ---
function lib/modify_states/timeline/enable_pass_1_keep

# --- 判断实体数目 ---
function lib/get_data/amount_pigs

# --- 生成新的生物 ---

## 令每个生成器随机选定要生成的生物
execute if score pigAmount data matches ..8 as @e[name=entitySummoner] run scoreboard players random @s data 1 100

## 生成生物
execute if score pigAmount data matches ..8 as @e[name=entitySummoner,scores={data=1..65}] at @s run summon pig ~~~
execute if score pigAmount data matches ..8 as @e[name=entitySummoner,scores={data=66..90}] at @s run summon piglin ~~~
execute if score pigAmount data matches ..8 as @e[name=entitySummoner,scores={data=91..100}] at @s run summon zombie_pigman ~~~

## 若实体过多，则阻止生成
execute unless score pigAmount data matches ..8 run tellraw @s {"rawtext":[{"translate":"chat.level.time_limited_4.too_many_entities"}]}
execute unless score pigAmount data matches ..8 run function lib/modify_states/sound/mob_villager_no

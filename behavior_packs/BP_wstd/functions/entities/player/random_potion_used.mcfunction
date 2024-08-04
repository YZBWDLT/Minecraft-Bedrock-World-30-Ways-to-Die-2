# ===== 使用物品时 =====
# 当玩家使用物品“随机药水”时触发

# --- 使用情况不在预期内时 ---

# --- 使用情况在预期内时 ---

# --- 对于一切可能的情况，都执行的内容 ---

## 清除自己的随机药水标记
clear @s wstd:random_potion_used -1 1

## 为自己进行一次随机
scoreboard players random @s data 0 34

## 初始化主标题
titleraw @s title {"rawtext":[{"translate":"title.empty"}]}

## 效果列表
effect @s[scores={data=0}] absorption 30 0 true
titleraw @s[scores={data=0}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.0"}]}

effect @s[scores={data=1}] bad_omen 30 0 true
titleraw @s[scores={data=1}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.1"}]}

effect @s[scores={data=2}] blindness 30 0 true
titleraw @s[scores={data=2}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.2"}]}

effect @s[scores={data=3}] clear
titleraw @s[scores={data=3}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.3"}]}

effect @s[scores={data=4}] conduit_power
titleraw @s[scores={data=4}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.4"}]}

effect @s[scores={data=5}] fatal_poison 30 0 true
titleraw @s[scores={data=5}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.5"}]}

effect @s[scores={data=6}] fire_resistance 30 0 true
titleraw @s[scores={data=6}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.6"}]}

effect @s[scores={data=7}] haste 30 0 true
titleraw @s[scores={data=7}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.7"}]}

effect @s[scores={data=8}] health_boost 30 0 true
titleraw @s[scores={data=8}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.8"}]}

effect @s[scores={data=9}] hunger 30 0 true
titleraw @s[scores={data=9}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.9"}]}

effect @s[scores={data=10}] instant_damage 1 0 true
titleraw @s[scores={data=10}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.10"}]}

effect @s[scores={data=11}] instant_health 1 0 true
execute if score isNetease data matches 0 run titleraw @s[scores={data=11}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.11"}]}
execute if score isNetease data matches 1 run titleraw @s[scores={data=11}] subtitle {"rawtext":[{"translate":"netease.subtitle.random_potion.11"}]}

effect @s[scores={data=12}] invisibility 30 0 true
titleraw @s[scores={data=12}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.12"}]}

effect @s[scores={data=13}] jump_boost 30 0 true
titleraw @s[scores={data=13}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.13"}]}

effect @s[scores={data=14}] levitation 30 0 true
titleraw @s[scores={data=14}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.14"}]}

effect @s[scores={data=15}] mining_fatigue 30 0 true
titleraw @s[scores={data=15}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.15"}]}

effect @s[scores={data=16}] nausea 30 0 true
titleraw @s[scores={data=16}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.16"}]}

effect @s[scores={data=17}] night_vision 30 0 true
titleraw @s[scores={data=17}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.17"}]}

effect @s[scores={data=18}] poison 30 0 true
titleraw @s[scores={data=18}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.18"}]}

effect @s[scores={data=19}] regeneration 30 0 true
titleraw @s[scores={data=19}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.19"}]}

effect @s[scores={data=20}] resistance 30 0 true
titleraw @s[scores={data=20}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.20"}]}

effect @s[scores={data=21}] saturation 30 0 true
titleraw @s[scores={data=21}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.21"}]}

effect @s[scores={data=22}] slow_falling 30 0 true
titleraw @s[scores={data=22}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.22"}]}

effect @s[scores={data=23}] slowness 30 0 true
titleraw @s[scores={data=23}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.23"}]}

effect @s[scores={data=24}] speed 30 0 true
titleraw @s[scores={data=24}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.24"}]}

effect @s[scores={data=25}] strength 30 0 true
titleraw @s[scores={data=25}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.25"}]}

effect @s[scores={data=26}] village_hero 30 0 true
titleraw @s[scores={data=26}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.26"}]}

effect @s[scores={data=27}] water_breathing 30 0 true
titleraw @s[scores={data=27}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.27"}]}

effect @s[scores={data=28}] weakness 30 0 true
titleraw @s[scores={data=28}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.28"}]}

effect @s[scores={data=29}] wither 30 0 true
titleraw @s[scores={data=29}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.29"}]}

effect @s[scores={data=30}] health_boost 10000 255 true
titleraw @s[scores={data=30}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.30"}]}

effect @s[scores={data=31}] resistance 10000 255 true
titleraw @s[scores={data=31}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.31"}]}

effect @s[scores={data=32}] instant_health 1 255 true
titleraw @s[scores={data=32}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.32"}]}

effect @s[scores={data=33}] wither 10000 0 true
titleraw @s[scores={data=33}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.33"}]}

kill @s[scores={data=34}]
titleraw @s[scores={data=34}] subtitle {"rawtext":[{"translate":"subtitle.random_potion.34"}]}

## 随机完之后，移除数据
scoreboard players reset @s data

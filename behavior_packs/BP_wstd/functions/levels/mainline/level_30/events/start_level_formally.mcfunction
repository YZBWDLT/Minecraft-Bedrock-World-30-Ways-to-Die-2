# ===== 正式开始关卡 =====
# 当关卡重置完毕后执行以下内容

# --- 玩家&实体 ---

## 玩家
tp @a -110 65 85 facing -120 65 85
## 作者NPC
kill @e[type=wstd:creator,x=5,y=5,z=14,r=3]
## 交易者
summon wstd:creator -125 65 77 90 0 become_xs_tradable

# --- 结构 ---
## 英文补丁
execute if score language data matches 1 run structure load mainline:level_30_en_patch -123 66 77

# --- 成就要求 ---

## 当未获得[禁止套娃]进度时，放置木桶
execute if score advancement.noDolls record matches 0 if score advancement.theEnd record matches 1 run setblock -129 64 74 barrel["facing_direction"=0,"open_bit"=false]
## 当未获得[绿宝石！]进度时，放置绿宝石
execute if score advancement.emerald record matches 0 if score advancement.surviveMaster record matches 1 run setblock -123 45 87 emerald_ore


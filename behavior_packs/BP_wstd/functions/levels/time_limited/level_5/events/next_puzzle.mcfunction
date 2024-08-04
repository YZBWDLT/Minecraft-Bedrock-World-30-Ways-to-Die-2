# ===== 下一个谜题 =====
# 当两个建筑对比成功时，执行此内容

# --- 加载结构 ---

## 新增得分
scoreboard players add timeLimited5.totalScore data 1

## 加载结构
execute if score timeLimited5.totalScore data matches 0 run structure load time_limited:level_5_1 -19 21 -104
execute if score timeLimited5.totalScore data matches 1 run structure load time_limited:level_5_2 -19 21 -104
execute if score timeLimited5.totalScore data matches 2 run structure load time_limited:level_5_3 -19 21 -104
execute if score timeLimited5.totalScore data matches 3 run structure load time_limited:level_5_4 -19 21 -104
execute if score timeLimited5.totalScore data matches 4 run structure load time_limited:level_5_5 -19 21 -104

## 清除掉落物
kill @e[type=item]

# --- 玩家 ---

## 清除物品
clear @a
## 传送玩家
tp @a -11 22 -100 facing -19 22 -100
## 重新给予物品
execute as @a run function lib/modify_data/item/supplier
## 播放音效
function lib/modify_states/sound/mob_villager_yes

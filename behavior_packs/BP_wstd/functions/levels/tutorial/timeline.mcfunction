# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 跳过教程设置 ---
# 执行时间：始终 | 仅限玩家通关过一次后执行

## 粒子 | 每秒执行1次
execute if score mapCompletedTimes record matches 1.. if score tick time matches 1 run particle wstd:red 49 20 -29
## 当玩家进入检测区域时，跳过教程
execute if score mapCompletedTimes record matches 1.. if entity @a[x=49,y=21,z=-29,r=0.75,c=1] run function levels/tutorial/events/skip_tutorial

# --- 重生点设置 ---
# 执行时间：始终

spawnpoint @a 45 22 -25

# --- 第一阶段 ---
# 执行时间：从开始 ~ 玩家按下按钮
# 0~281：开始 ~ 玩家拿出按钮前 | 282~283：玩家拿出按钮后 ~ 玩家按下按钮

## 当对话运行到第200刻后，展示箱子和粒子
execute if score timeline active matches 1 if score timeline time matches 200 run structure load tutorial:chest 41 21 -25
execute if score timeline active matches 1 if score timeline time matches 200 run particle wstd:chest_appear 41 21 -25

## 当对话运行到第281刻后，停止时间线流逝 | 此处留值，因为此处是等待玩家拿出按钮
execute if score timeline active matches 1 if score timeline time matches 281 run function lib/modify_states/timeline/enable_6_keep
## 若玩家已拿出按钮，重启对话提示玩家放下按钮 | 此处留值
execute if score timeline active matches 6 if score timeline time matches 200..281 if entity @a[hasitem={item=stone_button}] run function lib/modify_states/dialogue/enable_1_keep
execute if score timeline active matches 6 if score timeline time matches 200..281 if entity @a[hasitem={item=stone_button}] run function lib/modify_states/timeline/enable_pass_1_keep

## 当对话运行到第283刻后，停止时间线流逝 | 此处留值，因为此处是等待玩家按下按钮
execute if score timeline active matches 1 if score timeline time matches 283 run function lib/modify_states/timeline/enable_6_keep
## 若玩家已按下按钮，跳转到第二阶段
execute if score timeline active matches 6 if score timeline time matches 283 if block 45 22 -28 stone_button ["facing_direction"=3,"button_pressed_bit"=true] run function levels/tutorial/events/button_pressed

# --- 第二阶段 ---
# 执行时间：玩家按下按钮后 ~ 玩家拿到提示

## 当对话运行到第200刻后，给予玩家提示并停止时间流逝
execute if score timeline active matches 2 if score timeline time matches 200 run function levels/tutorial/events/give_hint

# --- 第三阶段 ---
# 执行时间：玩家使用提示后 ~ 玩家拿到攻略

## 当对话运行到第120刻后，给予玩家攻略并停止时间流逝
execute if score timeline active matches 3 if score timeline time matches 120 run function levels/tutorial/events/give_strategy

# --- 第四阶段 ---
# 执行时间：玩家使用攻略后 ~ 玩家拿到跳过

## 当对话运行到第200刻后，给予玩家跳过并停止时间流逝
execute if score timeline active matches 4 if score timeline time matches 200 run function levels/tutorial/events/give_skip

# --- 第五阶段 ---
# 执行时间：玩家使用跳过后 ~ 本关结束

## 在玩家使用跳过后2秒内，清除所有掉落物
execute if score timeline active matches 5 if score timeline time matches 0..40 run kill @e[type=item]

## 当对话运行到第120和200刻后，给予玩家跳过并停止时间流逝
execute if score timeline active matches 5 if score timeline time matches 120 as @a run give @s wstd:reset 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute if score timeline active matches 5 if score timeline time matches 200 as @a run give @s wstd:quit 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

## 当对话进行到520刻后（即最后一句话的4秒后），关卡结束
execute if score timeline active matches 5 if score timeline time matches 520 run function levels/tutorial/complete

# ===== 完成大师进度 =====
# 大师稀有进度 [不是吧，还有？]
# 上游进度：又双叒叕是按钮 mainline/button_again

# --- 记录进度已完成 ---

## 记录该进度已完成
scoreboard players set advancement.noMoreButton record 1
## 进度数记录+1
scoreboard players add progress.advancement record 1
## 同步记分板
function lib/scoreboard/advancement

# --- 开放下游进度 ---

# --- 提示玩家进度已完成 ---

## 音效
function lib/modify_states/sound/smithing_table_use
## 聊天栏
execute as @a run tellraw @s {"rawtext":[{"translate":"%%s\n%%s","with":{"rawtext":[{"translate":"chat.advancement.get"},{"translate":"chat.advancement.get.rare","with":{"rawtext":[{"selector":"@s"},{"translate":"advancement.master.no_more_button"}]}}]}}]}

# --- 特殊内容 ---

## 当玩家按下按钮后，毁掉按钮
fill -46 10 36 -46 11 35 air[] destroy
kill @e[type=item]

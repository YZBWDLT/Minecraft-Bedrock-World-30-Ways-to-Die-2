# ===== 按下按钮 =====
# 在第一阶段下检测玩家是否按下按钮

# --- 常规 ---

## 时间线&剧情线
function lib/modify_states/dialogue/enable_2
function lib/modify_states/timeline/enable_pass_2

# --- 特殊内容 ---

## 将按钮替换成空气
setblock 45 22 -28 air
## 清除玩家
kill @a
## 自定义死亡消息
execute as @a run tellraw @s {"rawtext":[{"translate":"chat.deathmessage.tutorial_level","with":{"rawtext":[{"selector":"@s"}]}}]}

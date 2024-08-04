# ===== 第3个问题 =====
# 该问题答案：正确

# --- 玩家走到绿色位置上 ---

## 绿色位置的提示 | 这里的right指的是玩家走到绿色位置上
execute as @a if entity @s[x=-68,y=21,z=-23,r=1] run tellraw @s {"rawtext":[{"translate":"chat.level.easter_egg_2.question_3.right"}]}
## 触发回答正确函数
execute as @a if entity @s[x=-68,y=21,z=-23,r=1] run function levels/easter_egg/level_2/events/answer_right

# --- 玩家走到红色位置上 ---

## 红色位置的提示 | 这里的wrong指的是玩家走到红色位置上
execute as @a if entity @s[x=-68,y=21,z=-27,r=1] run tellraw @s {"rawtext":[{"translate":"chat.level.easter_egg_2.question_3.wrong"}]}
## 触发回答错误函数
execute as @a if entity @s[x=-68,y=21,z=-27,r=1] run function levels/easter_egg/level_2/events/answer_wrong

# ===== 清除玩家 =====
# 当对话结束后，清除玩家

# --- 提示玩家 ---

## 音效
execute as @a at @s run playsound random.explode @s ~~~
stopsound @a smelly
## 粒子
particle wstd:explosion -35 22 -25
particle minecraft:huge_explosion_emitter -35 22 -25

# --- 清除玩家 ---
kill @p

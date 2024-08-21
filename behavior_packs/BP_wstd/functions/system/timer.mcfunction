# ===== 计时器 =====

# --- time.tick ---
scoreboard players add tick time 1
execute unless score tick time matches 0..19 run scoreboard players set tick time 0

# --- time.currentSecond & time.currentMinute ---
# 仅当在游戏正式开始后（-15 <= data.level <= 60）开始计时

execute if score level data matches -15..60 if score tick time matches 19 run scoreboard players add currentSecond time 1
## 到达60秒后，分钟+1，秒钟-60
execute if score level data matches -15..60 if score currentSecond time matches 60.. run scoreboard players add currentMinute time 1
execute if score level data matches -15..60 if score currentSecond time matches 60.. run scoreboard players remove currentSecond time 60
## 到达-1秒后，分钟-1，秒钟+60
execute if score level data matches -15..60 if score currentSecond time matches ..-1 run scoreboard players remove currentMinute time 1
execute if score level data matches -15..60 if score currentSecond time matches ..-1 run scoreboard players add currentSecond time 60
